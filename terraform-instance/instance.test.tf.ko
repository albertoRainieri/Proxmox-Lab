
resource "proxmox_vm_qemu" "vm-terraform" {
  name        = "test-tf"
  target_node = var.proxmox_host
  clone       = var.template_name
  # os_type     = "cloud-init"
  memory      = 2048
  # cpu         = "kvm64"
  cores       = 2
  vmid        = "120"
  bootdisk    = "data"
  vm_state    = "running"
  full_clone  = true
  ssh_user    = var.user
  sshkeys     = var.ssh_key
  skip_ipv6   = true

  disks {
    ide {
      ide2 {
        cloudinit {
          storage = "data"
        }
      }
      ide3 {
        passthrough {
          file = "data:vm-120-disk-0"

        }
      }
    }
  }

  ipconfig0 = "ip=192.168.2.116/24,gw=192.168.2.0"
}