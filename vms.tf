## ibmcloud sl vs options 
## gives you an overview whats available

/* resource "ibm_compute_vm_instance" "terraform-sample-flavor" {
    hostname = "BAMF-VM1"
    domain = "bamf1.bamf.com"
    os_reference_code = "UBUNTU_18_64"
    datacenter = "fra02"
    flavor_key_name = "B1_2X8X25"
    tags = ["bamf", "ubuntu"]
    notes = "This is for testing infra for bamf training"
} */

resource "ibm_compute_ssh_key" "test_ssh_key" {
    label = "my_ssh"
    notes = "my_ssh_id"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCYoKfFMzc5aX0GMQA1CO58FPpj7ftENvu4VNCr2kS2nZvrmGIXuFZOm7/ekcPXkZEVwBCLw79WxrQjMQjo+/dNRmWq4le6tC2GX4gM8xkOcpe4h1dlOJVUEmYlo/gKq3HdeTe/XRcei+5vEdrBirr6JntQa20cDPtPJtvYuUV7OaAlTZHokZY5f8JcGh9YIo4uUDWhcrg5x8FzhFBfcMurAO23+A0vglLPUbZadpFoGdzc1pPiPl+CLxwM1J2Z3KaVEamuvdigJFG+O7h/XjMES+mEkDT+mEkwc2i5hh7+dLkvA1KYsybwxRGRVo9+wqvTXCa34noC2HslTahTN3Jz maxisses@maxisses-dl-k8s"
}

resource "ibm_compute_vm_instance" "twc_terraform_sample" {
    hostname = "BAMF-VM1"
    domain = "bamf1.bamf.com"
    os_reference_code = "UBUNTU_18_64"
    datacenter = "fra02"
    network_speed = 10
    hourly_billing = true
    private_network_only = false
    cores = 1
    memory = 1024
    disks = [25, 10, 20]
    user_metadata = "{\"value\":\"newvalue\"}"
    dedicated_acct_host_only = true
    local_disk = false
    public_vlan_id = 2906692
    private_vlan_id = 2906694
    ssh_key_ids = [test_ssh_key.id]
}
