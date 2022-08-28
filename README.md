# Nasıl çalışır?

![](.vscode/readme-images/2022-08-28-11-28-34.png)


## Proxy Host Tanımları
![](.vscode/readme-images/2022-08-28-11-31-00.png)
![](.vscode/readme-images/2022-08-28-11-32-23.png)

Örneğin bir alt alan adımız yönetimin, diğeri ise kullanıcıların erişiminde olacak iki farklı adresi işaret etsin.
8002 Portunda çalışan web sunucumuz yonetim.alanadi.com.tr adresine hizmet versin.
![](.vscode/readme-images/2022-08-28-11-35-13.png)

8003 Portunda çalışan web sunucumuz kullanici.alanadi.com.tr adresine hizmet versin.
![](.vscode/readme-images/2022-08-28-11-36-58.png)

Hedef sunucu adresi olarak host.docker.internal adresini kullanıyoruz çünkü windows üstünde çalışan docker desktop ile windows makinasına erişmek için bu adı kullanmalıyız.
Eğer nginx proxy management konteyneri için --network=host ayarını yapmış olsaydık bu kez 127.0.0.1 adresini göstermemiz yeterli olacaktı.

## İsimden IP'ye Gidebilmek için hosts Dosyası Ayarı

```shell
127.0.0.1	yonetim.alanadi.com.tr
127.0.0.1	kullanici.alanadi.com.tr
```

![](.vscode/readme-images/2022-08-28-11-45-48.png)

## Görüntüleme

![](.vscode/readme-images/2022-08-28-11-48-17.png)

![image](https://user-images.githubusercontent.com/261946/187072079-0fd8ac6e-443d-4935-852d-b97f25fc3326.png)


