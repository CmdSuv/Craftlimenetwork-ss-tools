# CraftlimeNetwork SS Tools

Minecraft sunucu yetkilileri için hazırlanmış **kapsamlı Screenshare (SS) ve Adli Bilişim Kontrol Araçları & Adım Adım Türkçe Rehber Paketi**.

Bu depo; temel yüzeysel dosya/tarayıcı kontrollerinden başlayarak **NTFS `$MFT`**, **`$UsnJrnl` (USN Journal)**, **`SRUDB.dat`**, **`Amcache / BAM`**, **canlı RAM string analizi** ve **fileless (dosyasız) bellek enjeksiyonu tespitine** kadar 17 aracı kontrol gücüne göre sıralı şekilde, **taşınabilir (kurulumsuz)** olarak bir araya getirir.

---

## Klasör Yapısı

```text
Craftlimenetwork-ss-tools/
├── 01_Canli_RAM_ve_Surec/
│   ├── Hollows_Hunter/             # hollows_hunter64.exe + Hollows_Hunter_CMD.bat
│   ├── Process_Hacker_2/           # Process Hacker 2.39 (x64/x86)
│   └── Process_Hacker_2_Baslat.bat # Tek tıkla Yönetici başlatıcı
├── 02_Adli_Bilisim_Araclari/
│   ├── RawCopy64.exe               # Kilitli sistem dosyalarını (SRUDB.dat, Amcache.hve) kopyalama
│   ├── SrumECmd.exe                # SRUDB.dat ayrıştırıcı
│   ├── MFTECmd.exe                 # C:\$MFT ayrıştırıcı
│   ├── AmcacheParser.exe           # Amcache.hve (SHA-1) ayrıştırıcı
│   ├── Cikti/                      # Tüm CSV ve kopya çıktılarının kaydedildiği klasör
│   ├── Adli_Bilisim_CMD.bat        # Tek tıkla bu klasörde Yönetici CMD açar
│   └── TimelineExplorer_Kur_ve_Ac.bat # TimelineExplorer + .NET 10 + Intel CET düzeltmesi
├── 03_Dosya_ve_Calistirma_Gecmisi/ # everything.exe, journal-tool.exe, WinPrefetchView, LastActivityView, PrivaZer Shellbag
├── 04_Tarayici_ve_USB_Gecmisi/     # BrowsingHistoryView, BrowserDownloadsView, USBDriveLog
├── 05_Uzaktan_Baglanti/            # AnyDesk.exe
├── 06_Detayli_Anlatim_ve_Komutlar/ # Her araç için ayrı adım adım Türkçe rehber (.txt)
├── LISANS.txt                      # Lisans ve telif hakkı bildirimi
├── README.md                       # Bu doküman
└── VirusTotal.url                  # SHA-1 parmak izi doğrulama sayfası
```

---

## Kontrol Gücüne Göre Sıralı Araç Listesi (`01 → 17`)

> **Sıralama mantığı:** `01` numarada otomatik genel tarayıcı (**Ocean Anti-Cheat**) yer alır; `02`'den `17`'ye kadar araçlar **en basit / yüzeysel kontrolden en zor / en güçlü adli bilişim aracına** doğru sıralanmıştır.

| # | Araç | Kontrol Seviyesi | Ne İşe Yarar? | Detaylı Rehber |
|---|---|---|---|---|
| **00** | **Tüm Komutlar Özeti** | Hızlı Başvuru | Tek sayfada kopyala-yapıştır tüm CMD / `Win+R` komutları | [00_TUM_KOMUTLAR_OZET.txt](06_Detayli_Anlatim_ve_Komutlar/00_TUM_KOMUTLAR_OZET.txt) |
| **01** | **Ocean Anti-Cheat** | Sabit 1. Sıra (Otomatik) | Panelden üretilen 8 haneli PIN ile 60 saniyelik otomatik adli tarama | [01_Ocean_AntiCheat.txt](06_Detayli_Anlatim_ve_Komutlar/01_Ocean_AntiCheat.txt) |
| **02** | **AnyDesk** | Temel | Uzaktan masaüstü bağlantısı (SS hazırlık aşaması) | [02_AnyDesk.txt](06_Detayli_Anlatim_ve_Komutlar/02_AnyDesk.txt) |
| **03** | **Everything** | Temel | Diskteki mevcut dosyaları anlık arama (`.jar`, `.exe`, `.dll`) | [03_Everything.txt](06_Detayli_Anlatim_ve_Komutlar/03_Everything.txt) |
| **04** | **BrowsingHistoryView** | Temel | Kurulu tüm tarayıcıların ziyaret geçmişini tek ekranda listeleme | [04_BrowsingHistoryView.txt](06_Detayli_Anlatim_ve_Komutlar/04_BrowsingHistoryView.txt) |
| **05** | **WebBrowserDownloadsView** | Temel–Orta | Tüm tarayıcıların indirme geçmişi, dosya yolu ve kaynak URL | [05_WebBrowserDownloadsView.txt](06_Detayli_Anlatim_ve_Komutlar/05_WebBrowserDownloadsView.txt) |
| **06** | **USBDriveLog** | Temel–Orta | USB bellek takma/çıkarma saatleri (harici diskten hile kontrolü) | [06_USBDriveLog.txt](06_Detayli_Anlatim_ve_Komutlar/06_USBDriveLog.txt) |
| **07** | **ComputerActivityView** | Orta | Kronolojik kullanıcı işlem geçmişi (`LastActivityView`) | [07_ComputerActivityView_LastActivityView.txt](06_Detayli_Anlatim_ve_Komutlar/07_ComputerActivityView_LastActivityView.txt) |
| **08** | **WinPrefetchView** | Orta | `Prefetch` kayıtlarından son çalıştırılan `.exe`'ler ve yolları | [08_WinPrefetchView.txt](06_Detayli_Anlatim_ve_Komutlar/08_WinPrefetchView.txt) |
| **09** | **PrivaZer Shellbag Analyzer** | Orta | Silinmiş klasörlerin ve USB klasörlerinin `Shellbags` izleri | [09_PrivaZer_Shellbag_Analyzer.txt](06_Detayli_Anlatim_ve_Komutlar/09_PrivaZer_Shellbag_Analyzer.txt) |
| **10** | **Event Viewer** | Orta–İleri | Log silme (`104`, `1102`), servis durdurma (`7036`), reboot (`1074`), saat hilesi (`4616`) | [10_Event_Viewer_Olay_Goruntuleyicisi.txt](06_Detayli_Anlatim_ve_Komutlar/10_Event_Viewer_Olay_Goruntuleyicisi.txt) |
| **11** | **Journal Tool** | İleri | NTFS USN Journal (`$UsnJrnl:$J`) — dosya oluşturma, isim değiştirme, silme | [11_Journal_Tool.txt](06_Detayli_Anlatim_ve_Komutlar/11_Journal_Tool.txt) |
| **12** | **Timeline Explorer** | İleri | Büyük adli bilişim CSV raporlarını kasmadan filtreleme arayüzü | [12_Timeline_Explorer.txt](06_Detayli_Anlatim_ve_Komutlar/12_Timeline_Explorer.txt) |
| **13** | **AmcacheParser & BAM** | İleri | Çalıştırılma saati (`BAM`) + değişmez `SHA-1` parmak izi & VirusTotal | [13_AmcacheParser_ve_BAM.txt](06_Detayli_Anlatim_ve_Komutlar/13_AmcacheParser_ve_BAM.txt) |
| **14** | **RawCopy + SrumECmd** | Çok Güçlü | `SRUDB.dat` (30–60 günlük internet veri kullanımı ve çalışma faturası) | [14_RawCopy_ve_SrumECmd.txt](06_Detayli_Anlatim_ve_Komutlar/14_RawCopy_ve_SrumECmd.txt) |
| **15** | **MFTECmd (`$MFT`)** | Çok Güçlü | NTFS ana dosya tablosu — Shift+Delete silinenler, `0x10` vs `0x30` tarih hilesi, disk wipe | [15_MFTECmd_MFT.txt](06_Detayli_Anlatim_ve_Komutlar/15_MFTECmd_MFT.txt) |
| **16** | **Process Hacker 2.39** | Uzman | Canlı RAM string taraması (`javaw.exe` + `DiagTrack`, `PcaSvc`, `Dnscache`) | [16_Process_Hacker_2.txt](06_Detayli_Anlatim_ve_Komutlar/16_Process_Hacker_2.txt) |
| **17** | **Hollows Hunter** | En Güçlü / Zirve | Fileless RAM, gizli PE enjeksiyonu, Process Hollowing, API Hook ve Shellcode analizi | [17_Hollows_Hunter.txt](06_Detayli_Anlatim_ve_Komutlar/17_Hollows_Hunter.txt) |

---

## Hızlı Başlangıç (Windows 10 / 11 x64)

1. **Releases** sayfasından en güncel ZIP dosyasını **İndirilenler (`Downloads`)** klasörüne indirin ve klasöre çıkarın.
2. Tüm temel ve komut satırı araçları (`everything.exe`, `ProcessHacker.exe`, `hollows_hunter64.exe`, `RawCopy64.exe`, `SrumECmd.exe`, `MFTECmd.exe`, `AmcacheParser.exe`, `journal-tool.exe`, `NirSoft` araçları, `PrivaZer`, `AnyDesk`) **paketin içinde taşınabilir olarak hazırdır** — ayrıca `C:\SS_Tools` oluşturmanız gerekmez!
3. **CSV görüntüleyici (`TimelineExplorer`) ve `.NET 10` için tek tık:**
   - `02_Adli_Bilisim_Araclari\TimelineExplorer_Kur_ve_Ac.bat` dosyasına çift tıklayın.
   - *(GitHub 100 MB dosya sınırı nedeniyle 206 MB'lık `TimelineExplorer.exe` depoya gömülmemiştir; bu betik ilk açılışta `TimelineExplorer`'ı ve eksikse `.NET 10 Desktop Runtime`'ı otomatik indirip Intel 12. nesil+ CET `0x80131506` çökme düzeltmesini de tek seferde uygular.)*
4. **Komut satırı araçlarını açmanın en kolay yolu:**
   - **Amcache / SRUM / MFT (`13–15`) için:** `02_Adli_Bilisim_Araclari\Adli_Bilisim_CMD.bat` dosyasına çift tıklayın (Yönetici CMD doğrudan doğru klasörde açılır).
   - **Hollows Hunter (`17`) için:** `01_Canli_RAM_ve_Surec\Hollows_Hunter\Hollows_Hunter_CMD.bat` dosyasına çift tıklayın.
   - **Manuel CMD kullanmak isterseniz** (İndirilenler'deki klasör adı `Craftlimenetwork-ss-tools-1.1` veya `-main` ne olursa olsun otomatik bulur):
     ```bat
     for /f "delims=" %i in ('dir /b /s /ad "%USERPROFILE%\Downloads\*02_Adli_Bilisim_Araclari"') do cd /d "%i"
     ```
     ```bat
     for /f "delims=" %i in ('dir /b /s /ad "%USERPROFILE%\Downloads\*Hollows_Hunter"') do cd /d "%i"
     ```

> **Windows Defender Notu:** Adli bilişim ve RAM tarama araçları (`Process Hacker`, `RawCopy64`, `Hollows Hunter`, `NirSoft`) güvenlik yazılımları tarafından zaman zaman *HackTool / PUA* olarak işaretlenebilir; indirilen klasörü Defender dışlama listesine eklemeniz önerilir.

---

## Etik ve Gizlilik İlkeleri

- SS kontrolleri yalnızca oyuncunun bilgisi ve onayı dahilinde, şeffaf şekilde yapılmalıdır.
- Yalnızca oyun ve sistem kontrolü için gereken alanlar incelenmeli; oyuncunun kişisel sohbet, hesap, fotoğraf veya özel verilerine kesinlikle erişilmemelidir.

---

## Lisans ve Telif Hakkı

**Telif Hakkı (c) 2026 Omar Yiğitcan Mengü** — [github.com/CmdSuv](https://github.com/CmdSuv)

- **Kullanılabilir:** Kişisel, eğitim ve Minecraft sunucu yetkili (SS) kontrolleri için ücretsiz olarak kullanılabilir ve orijinal hali bozulmadan paylaşılabilir.
- **Değiştirilemez:** İçerik değiştirilemez, düzenlenemez, türev çalışma oluşturulamaz ve başka bir isimle sahiplenilemez.
- **Satılamaz:** Ticari amaçla kullanılamaz, ücretli satılamaz veya ücretli paketlere dahil edilemez.
- **Lisans Çıkarılamaz:** [LISANS.txt](LISANS.txt) ve rehber dosyalarının içindeki lisans/telif bildirimi ne olursa olsun dosyalardan çıkarılamaz; her kullanımda eksiksiz kalmak zorundadır.
- **Üçüncü Taraf Araçlar:** Depoda yer alan üçüncü taraf araçlar kendi orijinal geliştiricilerinin lisans ve kullanım koşullarına tabidir.

Tam lisans metni için [LISANS.txt](LISANS.txt) dosyasına bakın.
