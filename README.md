# BLM4522 Proje 1 - Veritabanı Performans Optimizasyonu ve İzleme

Bu repo, BLM4522 dersi kapsamında hazırlanan **Proje 1: Veritabanı Performans Optimizasyonu ve İzleme** çalışmasını içermektedir.

## Projenin Amacı

Bu projenin amacı, Microsoft SQL Server ortamında çalışan sorguların performansını incelemek, optimizasyon öncesi ve sonrası durumları karşılaştırmak, uygun indeksleme yöntemlerini uygulamak ve veritabanı izleme yaklaşımını temel düzeyde göstermektir.

Proje kapsamında örnek müşteri, ürün ve sipariş tabloları oluşturulmuş, bu tablolar test verileri ile doldurulmuş ve çeşitli sorgular üzerinden performans analizi yapılmıştır. Daha sonra indeksleme uygulanmış, aynı sorgular tekrar çalıştırılmış ve elde edilen sonuçlar karşılaştırılmıştır.

Ayrıca proje kapsamında temel düzeyde erişim yönetimi de gösterilmiş, farklı roller tanımlanmış ve bu rollerin örnek kullanıcılar üzerindeki etkisi test edilmiştir.

## Kullanılan Araçlar

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

## Veritabanı Adı

Projede kullanılan veritabanı:

- `21291001_PERF`

## Oluşturulan Tablolar

Proje kapsamında aşağıdaki tablolar oluşturulmuştur:

- `customers_perf`
- `products_perf`
- `orders_perf`

## Uygulanan İşlemler

Bu proje kapsamında aşağıdaki adımlar gerçekleştirilmiştir:

1. Ayrı bir performans test veritabanının oluşturulması  
2. Müşteri, ürün ve sipariş tablolarının hazırlanması  
3. Tabloların test verileri ile doldurulması  
4. Veri hacminin kontrol edilmesi  
5. Optimizasyon öncesi sorgu performansının ölçülmesi  
6. Uygun sütunlar üzerinde indeks oluşturulması  
7. Aynı sorgunun optimizasyon sonrası tekrar çalıştırılması  
8. Ölçüm sonuçlarının karşılaştırılması  
9. DMV kullanılarak sorgu izleme işleminin gösterilmesi  
10. Veritabanı rolleri ve erişim yönetiminin temel düzeyde uygulanması  

## Performans Analizi

Performans testi için `SET STATISTICS TIME ON` ve `SET STATISTICS IO ON` komutları kullanılmıştır. Böylece sorguların çalışma süresi ve logical read değerleri ölçülmüştür.

Optimizasyon öncesi ve sonrası sonuçlar karşılaştırılarak indeksleme işleminin sorgu performansına etkisi değerlendirilmiştir.

## DMV ile İzleme

Proje kapsamında `sys.dm_exec_query_stats` ve `sys.dm_exec_sql_text` gibi Dynamic Management Views kullanılarak SQL Server üzerinde çalışan sorguların CPU, elapsed time ve logical read bilgileri incelenmiştir.

Bu adım sayesinde performans analizi yalnızca sorgu süresi ile değil, sistem üzerindeki kaynak kullanımı ile de desteklenmiştir.

## Rol ve Yetki Yönetimi

Projede aşağıdaki roller oluşturulmuştur:

- `readonly_role`
- `reporting_role`
- `manager_role`

Bu rollere örnek kullanıcılar atanmış ve aşağıdaki senaryolar test edilmiştir:

- readonly kullanıcısının yalnızca izin verilen tabloyu okuyabilmesi
- reporting kullanıcısının tüm ana tabloları okuyabilmesi ancak veri güncelleyememesi
- manager kullanıcısının veri güncelleme işlemi gerçekleştirebilmesi

Böylece erişim yönetimi yapısı uygulamalı olarak gösterilmiştir.

## SQL Dosyaları

`sql/` klasörü içinde proje boyunca kullanılan SQL sorguları bulunmaktadır.

## Video

Proje anlatım videosu bağlantısı:

- [Proje Videosunu İzlemek İçin Tıklayın](https://youtu.be/rA_DXLe4KgI)

## Sonuç

Bu projede veritabanı performans optimizasyonu, sorgu analizi, indeksleme, DMV ile izleme ve temel rol yönetimi uygulamalı olarak gösterilmiştir. Sonuç olarak sorgu performansının iyileştirilebildiği ve erişim yetkilerinin kontrollü şekilde yönetilebildiği ortaya konmuştur.
