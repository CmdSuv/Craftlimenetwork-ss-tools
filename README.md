# CraftlimeNetwork SS Tools

[![Hemen İndir (Son Sürüm)](https://img.shields.io/badge/HEMEN_%C4%B0ND%C4%B0R-CraftlimeNetwork--SS--Tools.zip_(Son_S%C3%BCr%C3%BCm)-65a30d?style=for-the-badge)](https://github.com/CmdSuv/Craftlimenetwork-ss-tools/releases/latest/download/CraftlimeNetwork-SS-Tools.zip)

> **Tek tıkla otomatik indirme:** [CraftlimeNetwork-SS-Tools.zip (Son Sürüm)](https://github.com/CmdSuv/Craftlimenetwork-ss-tools/releases/latest/download/CraftlimeNetwork-SS-Tools.zip)

Minecraft sunucu yetkilileri için hazırlanmış **kapsamlı Screenshare (SS) ve Adli Bilişim Kontrol Araçları & Türkçe Rehber Paketi**.  
Tüm araçlar **`Araclar/01` → `Araclar/17`** şeklinde kontrol gücüne göre tek sıra halinde düzenlenmiştir; her aracın kendi klasöründe aracı ve kendi **`REHBER.txt`** dosyası bulunur.

---

## Tertemiz Klasör Yapısı

```text
Craftlimenetwork-ss-tools/
├── 00_TUM_KOMUTLAR_OZET.txt    # Tek sayfada tüm sıralama ve komut özeti
├── Araclar/                    # 01'den 17'ye sıralı (her klasörde araç + REHBER.txt)
│   ├── 01_Ocean_AntiCheat/
│   ├── 02_AnyDesk/
│   ├── 03_Everything/
│   ├── 04_BrowsingHistoryView/
│   ├── 05_WebBrowserDownloadsView/
│   ├── 06_USBDriveLog/
│   ├── 07_ComputerActivityView/
│   ├── 08_WinPrefetchView/
│   ├── 09_PrivaZer_Shellbag/
│   ├── 10_Event_Viewer/
│   ├── 11_Journal_Tool/
│   ├── 12_Timeline_Explorer/
│   ├── 13_AmcacheParser_ve_BAM/
│   ├── 14_RawCopy_ve_SrumECmd/
│   ├── 15_MFTECmd_MFT/
│   ├── 16_Process_Hacker_2/
│   └── 17_Hollows_Hunter/
├── Cikti/                      # Amcache, SRUM ve MFT CSV raporlarının toplandığı tek klasör
├── VirusTotal.url              # SHA-1 parmak izi doğrulama (tek internet kısayolu)
├── LISANS.txt                  # Lisans ve telif hakkı bildirimi
└── README.md
```

---


## 3 Adımda Kullanım (Windows 10 / 11 x64)

1. Yukarıdaki **HEMEN İNDİR** butonuna tıklayıp `CraftlimeNetwork-SS-Tools.zip` dosyasını indirin ve klasöre çıkarın.
2. İlk kez kullanıyorsanız **`Araclar/12_Timeline_Explorer/TimelineExplorer_Ac.bat`** dosyasına bir kez çift tıklayın — `.NET 10 Desktop Runtime`, `TimelineExplorer` ve Intel CET `0x80131506` uyumluluk ayarını otomatik kurar.
3. Ardından **`Araclar/`** klasöründen `01`'den `17`'ye kadar sırayla istediğiniz aracı tek tıkla çalıştırın (`13`, `14` ve `15` numaralı taramaların tüm CSV çıktıları otomatik olarak ana dizindeki **`Cikti/`** klasöründe toplanır).

> **Windows Defender Notu:** Adli bilişim ve RAM tarama araçları (`Process Hacker`, `RawCopy64`, `Hollows Hunter`, `NirSoft`) güvenlik yazılımları tarafından *HackTool / PUA* olarak uyarılabilir; çıkardığınız klasörü Defender dışlama listesine eklemeniz önerilir.

---

## Lisans ve Telif Hakkı

**Telif Hakkı (c) 2026 Omar Yiğitcan Mengü** — [github.com/CmdSuv](https://github.com/CmdSuv)

- **Kullanılabilir:** Kişisel, eğitim ve Minecraft sunucu yetkili (SS) kontrolleri için ücretsiz kullanılabilir ve orijinal hali bozulmadan paylaşılabilir.
- **Değiştirilemez:** İçerik değiştirilemez, düzenlenemez, türev çalışma oluşturulamaz ve başka bir isimle sahiplenilemez.
- **Satılamaz:** Ticari amaçla kullanılamaz, ücretli satılamaz.
- **Lisans Çıkarılamaz:** [LISANS.txt](LISANS.txt) ve rehber dosyalarındaki lisans/telif bildirimi hiçbir koşulda çıkarılamaz.
- *Üçüncü taraf yazılımlar kendi orijinal geliştiricilerinin lisanslarına tabidir.*
