const express = require("express");
const axios = require("axios");
const bodyParser = require("body-parser");
require("dotenv").config();

const app = express();
const port = process.env.PORT;

app.use(bodyParser.json());

app.get("/", async (req, res) => {
  res.status(200).send("SonarQube Send Notification Server");
});

app.post("/sonarqube", async (req, res) => {
  const data = req.body;
  const projectName = data.project.name;
  const status = data.qualityGate.status;
  const analysisDate = data.analysedAt;
  const projectUrl = data.project.url;
  const taskID = data.taskId;

  const discordWebhookObject = JSON.parse(process.env.DISCORD_WEBHOOK_URL);
  var disocrdWebhook_url;

  for (var key in discordWebhookObject) {
    if (key.toString() === projectName.toString()) {
      disocrdWebhook_url = discordWebhookObject[key];
    }
  }
  // Create an array of quality gate conditions
  const conditions = data.qualityGate.conditions.map((condition) => {
    return {
      name: `${condition.metric.replace("_", " ").toUpperCase()}`,
      value: `Status: ${condition.status === "OK" ? "✅" : condition.status === "NO_VALUE" ? "⛔️" : "❌"} Value: ${condition.value === undefined ? "❓" : condition.value} Threshold: ${condition.errorThreshold}`,
    };
  });

  const embed = {
    title: `SonarQube Analysis for ${projectName}`,
    description: `Quality Gate Status: **${status}**`,
    fields: [
      {
        name: "Task ID",
        value: `${taskID}`,
      },
      {
        name: "Project URL",
        value: `${projectUrl}`,
      },
      ...conditions,
    ],
    color: status === "OK" ? 3066993 : 15158332, // green for OK, red for failed
    timestamp: analysisDate,
    thumbnail: {
      url: process.env.SONARQUBE_IMAGE_URL,
    },
  };

  try {
    await axios.post(disocrdWebhook_url, {
      embeds: [embed],
    });
    res.status(200).send("Notification send To Discord");
  } catch (error) {
    console.log("Error to send to Discord: ", error);
    res.status(500).send("Failed To Send Notification");
  }
});

app.listen(port, () => {
  console.log(`sonarqube webhook listening on port ${port}`);
});
