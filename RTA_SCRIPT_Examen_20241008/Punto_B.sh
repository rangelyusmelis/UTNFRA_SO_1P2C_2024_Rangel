/bin/bash

# Crear particiones lógicas dentro de la partición extendida
sudo fdisk /dev/sdc <<EOF
n
e
1


n
l
5

+1G

n
l
6

+1G

n
l
7

+1G

n
l
8

+1G

n
l
9

+1G

n
l
10

+1G

n
l
11

+1G

n
l
12

+1G

n
l
13

+1G

n
l
14
w
EOF

# Montar las particiones creadas
sudo mount /dev/sdc5  /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc6  /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc7  /Examenes-UTN/alumno_1/parcial_3
sudo mount /dev/sdc8  /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc9  /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc10  /Examenes-UTN/alumno_2/parcial_3
sudo mount /dev/sdc11  /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc12  /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc13  /Examenes-UTN/alumno_3/parcial_3
sudo mount /dev/sdc14  /Examenes-UTN/profesores

# Agregar las particiones a /etc/fstab
echo "/dev/sdc5 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc8 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc11 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc12 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc13 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc14 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab
ab

