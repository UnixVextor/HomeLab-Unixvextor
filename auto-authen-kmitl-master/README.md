# Auto-authen-KMITL

A **_Python script_** that let you automatically authenticate into KMITL network

## Getting started
### Prerequisites
* Python 3.x
* Git

### Installation
1. Clone repo (networklab-kmitl/auto-authen-kmitl>)
```
git clone git@gitlab.com:networklab-kmitl/auto-authen-kmitl.git
```
2. `cd` into project directory
```
cd auto-authen-kmitl
```
3. Install some python package
```
pip install -r requirements.txt
```

### Usage
```
python authen.py
```

### Parameters
| Parameter | Default | Description |
|:---------:|:-------:|-------------|
| `-h`, `--help` | | see help |
| `-u`, `--username` | None | manually set username |
| `-p`, `--password` | None | manually set password |
| `-i`, `--interval` | 10 | manually set heart beat interval (seconds) |
| `--config` | | create config file |
| `--max-login-attempt` | 20 | override maximum login attempt (times) |

### Config
| Alias | Name | Description |
|:-----:|:----:|-------------|
| `username` | Username | Username to login _(without **@kmitl.ac.th**)_ |
| `password` | Password | Password to login |
| `interval` | Interval | Heartbeat interval in seconds _(default: 10 seconds)_ |

## Credit
* **_assazzin & CSAG_** for original [Auto-authen-KMITL](https://github.com/assazzin/Auto-authen-KMITL) written in Perl language
* **_Network Laboratory_** for nice space to improve our productivity!

## Team
* @patthawee.ch
* @earthpyy

## Disclaimer
This project is only an experiment on KMITL authentication system and it does not provided a bypass for login system