terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  token     = "y0__xCeouiTAhjB3RMguY_EuhLs27zt1gHuwh49JfNCWZK5Kn647Q" # *OAuth-токен яндекса*
	# не обязательный параметр (берется облако по умолчанию),
	# хотя в документации написано иначе
  cloud_id  = "b1gnd44r8vpb61ts1ks3"
  folder_id = "b1g9bitgejlio7qo41t2"
  zone = "ru-central1-a"
}
