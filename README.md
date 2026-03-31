# linuxproject
linux project
# Open Source Software Audit

**Student Name:** [P NITHISH]

**Registration Number:** [24BAI10155]

**Slot:** [A24]

** Software:** Git which is a Version Control System

## Project Overview

This repository has all the shell scripts that we need for the Open Source Software Audit project. We have to do five units and all of them are here.

The project looks at Git. This is a tool that Linus Torvalds made in 2005 when the Linux kernel community had problems with version control that was not free.

## Scripts Included

| Script | Filename                     | Purpose |

|--------|------------------------------|---------|

| 1       system_identity.sh`         | This shows the Linux system welcome screen and the license information |

| 2      | `foss_package_inspector.sh`  | This checks if Git is installed on the system and it also has a note about the philosophy of free and open source software |

| 3      | `disk_permission_auditor.sh`  | This audits the directory space and the permissions. It also checks the Git configuration |

| 4      | `log_file_analyzer.sh`       | This counts the keywords, in the log file. It shows the last five matches |

| 5      | `manifesto_generator.sh`     | This generates an Open Source Manifesto and you can interact with it

## How to Run on Linux

```bash

# Make all the scripts executable

chmod +x *.sh

# Now we can run them

./system_identity.sh

./foss_package_inspector.sh

./disk_permission_auditor.sh

./log_file_analyzer.sh /var/log/messages error

./manifesto_generator.sh ```
