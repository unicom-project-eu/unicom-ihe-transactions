Profile: myPatient
Parent: Patient
Title: "My Patient"
Description: "My Patient profile for testing purpose"
* gender 1..1


Instance: me
InstanceOf: myPatient
Title: "My Patient instance "
Description: "My Patient instance for testing purpose"
* name.given[0] = "Jose"
* gender = #male
