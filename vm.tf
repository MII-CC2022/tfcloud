resource "google_compute_instance" "default" {
  name= "new-vm"
  machine_type= "f1-micro"
  zone = "europe-central2-b"
  boot_disk{
    initialize_params{
       image= "debian-10-buster-v20220317"
    }
  }
  
  network_interface{
   network = "default"
   access_config {
      nat_ip= google_compute_address.static.address
   }
  }
}
