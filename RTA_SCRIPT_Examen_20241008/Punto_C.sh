#!/bin/bash
sudo su
sudo useradd -m -s /bin/bash -c " usuario" p1c2_2024_A1 

sudo useradd -m -s /bin/bash -c " usuario" p1c2_2024_A2
 
sudo useradd -m -s /bin/bash -c " usuario" p1c2_2024_A3

sudo useradd -m -s /bin/bash -c " usuario" p1c2_2024_P1


sudo useradd -m -s /bin/bash -c " usuario" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1 

sudo useradd -m -s /bin/bash -c " usuario" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')"  p1c2_2024_A2
 
sudo useradd -m -s /bin/bash -c " usuario" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')"  p1c2_2024_A3

sudo useradd -m -s /bin/bash -c " usuario" -p "$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -c "usuario" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "usuario" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "usuario" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "usuario" -G p1c2_2024_gProfesores p1c2_2024_P1



