java-1.8.0-openjdk:
  pkg.installed: []
jenkins:
  user.present: []
/srv/jenkins:
  file.directory:
    - user: jenkins
    - group: jenkins
    - mode: 755
    - makedirs: True
/etc/ssh/sshd_config:
  file.append:
    - text: "PermitRootLogin: yes"
sshd:
  service.running:
    - restart: True
