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
}
