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

## Araç Listesi (Kontrol Gücüne Göre: `01 → 17`)

| # | Araç | Seviye | Nasıl Çalıştırılır? | Rehber |
|---|---|---|---|---|
| **01** | **Ocean Anti-Cheat** | Başlangıç (Otomatik) | Panelden alınan 8 haneli PIN ile | [REHBER.txt](Araclar/01_Ocean_AntiCheat/REHBER.txt) |
| **02** | **AnyDesk** | Temel | `AnyDesk.exe` | [REHBER.txt](Araclar/02_AnyDesk/REHBER.txt) |
| **03** | **Everything** | Temel | `everything.exe` (Yönetici) | [REHBER.txt](Araclar/03_Everything/REHBER.txt) |
| **04** | **BrowsingHistoryView** | Temel | `BrowsingHistoryView.exe` | [REHBER.txt](Araclar/04_BrowsingHistoryView/REHBER.txt) |
| **05** | **WebBrowserDownloadsView** | Temel–Orta | `BrowserDownloadsView.exe` | [REHBER.txt](Araclar/05_WebBrowserDownloadsView/REHBER.txt) |
| **06** | **USBDriveLog** | Temel–Orta | `USBDriveLog.exe` (Yönetici) | [REHBER.txt](Araclar/06_USBDriveLog/REHBER.txt) |
| **07** | **ComputerActivityView** | Orta | `LastActivityView.exe` (Yönetici) | [REHBER.txt](Araclar/07_ComputerActivityView/REHBER.txt) |
| **08** | **WinPrefetchView** | Orta | `WinPrefetchView.exe` (Yönetici) | [REHBER.txt](Araclar/08_WinPrefetchView/REHBER.txt) |
| **09** | **PrivaZer Shellbag** | Orta | `PrivaZer_Shellbag_Analyzer.exe` (Yönetici) | [REHBER.txt](Araclar/09_PrivaZer_Shellbag/REHBER.txt) |
| **10** | **Event Viewer** | Orta–İleri | `Event_Viewer_Ac.bat` | [REHBER.txt](Araclar/10_Event_Viewer/REHBER.txt) |
| **11** | **Journal Tool** | İleri | `journal-tool.exe` (Yönetici) | [REHBER.txt](Araclar/11_Journal_Tool/REHBER.txt) |
| **12** | **Timeline Explorer** | İleri | `TimelineExplorer_Ac.bat` *(tek tık kur + aç)* | [REHBER.txt](Araclar/12_Timeline_Explorer/REHBER.txt) |
| **13** | **AmcacheParser & BAM** | İleri | `Amcache_Taramasi_Baslat.bat` & `BAM_Regedit_Ac.bat` | [REHBER.txt](Araclar/13_AmcacheParser_ve_BAM/REHBER.txt) |
| **14** | **RawCopy & SrumECmd** | Çok Güçlü | `SRUM_Taramasi_Baslat.bat` | [REHBER.txt](Araclar/14_RawCopy_ve_SrumECmd/REHBER.txt) |
| **15** | **MFTECmd (`$MFT`)** | Çok Güçlü | `MFT_Taramasi_Baslat.bat` | [REHBER.txt](Araclar/15_MFTECmd_MFT/REHBER.txt) |
| **16** | **Process Hacker 2.39** | Uzman | `Process_Hacker_2_Ac.bat` | [REHBER.txt](Araclar/16_Process_Hacker_2/REHBER.txt) |
| **17** | **Hollows Hunter** | En Güçlü / Zirve | `Hollows_Hunter_CMD.bat` | [REHBER.txt](Araclar/17_Hollows_Hunter/REHBER.txt) |

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
