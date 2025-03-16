virtual_machines = {
  "vm-1" = {
    vm_name   = "balance-server"                                 # Имя ВМ
    vm_desc   = "Балансировщик на базе nginx proxy"              # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 20                                               # Объём диска в ГБ
    disk_name = "balance-nginx-proxy"                              # Название диска
    template = "fd81r1dpns2m4mgssm0q"                            # ubuntu 22-04 v20250303
  },
  "vm-2" = {
    vm_name   = "mediawiki-node1"                                # Имя ВМ
    vm_desc   = "Сервер приложения MediaWiki"                    # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 20                                               # Объём диска в ГБ
    disk_name = "mw-node1"                                        # Название диска
    template  = "fd81r1dpns2m4mgssm0q"                           # ID образа ОС для использования
  },
  "vm-3" = {
    vm_name   = "mediawiki-node2"                                # Имя ВМ
    vm_desc   = "Сервер приложения MediaWiki"                    # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 20                                               # Объём диска в ГБ
    disk_name = "mw-node2"                                        # Название диска
    template  = "fd81r1dpns2m4mgssm0q"                           # ID образа ОС для использования
  },
  "vm-4" = {
    vm_name   = "postgresql-master"                              # Имя ВМ
    vm_desc   = "Сервер БД Postgres мастер"                      # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 20                                               # Объём диска в ГБ
    disk_name = "psql-master"                                     # Название диска
    template  = "fd81r1dpns2m4mgssm0q"                           # ID образа ОС для использования
  },
  "vm-5" = {
    vm_name   = "postgresql-slave"                               # Имя ВМ
    vm_desc   = "Сервер БД Postgres слэйв"                       # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 20                                               # Объём диска в ГБ
    disk_name = "psql-slave"                                      # Название диска
    template  = "fd81r1dpns2m4mgssm0q"                           # ID образа ОС для использования
  },
  "vm-6" = {
    vm_name   = "zabbix"                                         # Имя ВМ
    vm_desc   = "Сервер мониторингав"                            # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 20                                               # Объём диска в ГБ
    disk_name = "zbbx-disk"                                        # Название диска
    template  = "fd81r1dpns2m4mgssm0q"                           # ID образа ОС для использования
  },
  "vm-7" = {
    vm_name   = "backup-fs"                                      # Имя ВМ
    vm_desc   = "Сервер бэкап файловый"                          # Описание
    vm_cpu    = 2                                                # Кол-во ядер процессора
    ram       = 2                                                # Оперативная память в ГБ
    disk      = 20                                               # Объём диска в ГБ
    disk_name = "bup-disk"                                        # Название диска
    template  = "fd81r1dpns2m4mgssm0q"                           # ID образа ОС для использования
  }

}
