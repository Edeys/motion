# Brand kit — dautudatnongnghiep.com

Dùng file này làm "product brief" khi bảo agent làm video cho sàn.
`om` pipeline sẽ đọc sản phẩm từ đây thay vì phải crawl website.

## Sản phẩm là gì
Sàn tin sạch đất nông nghiệp Tây Nguyên (Đắk Nông · Lâm Đồng · BMT…), tiếng Việt.
Tin chính chủ, có sổ, giá tính theo sào (1 sào = 1000m²). Khác biệt lớn nhất:
có lớp bản đồ quy hoạch từng thửa (QHSDĐ) tra trước khi xuống tiền.

## Claim đã dùng
- "Nhìn đất như nhìn sổ."
- "TIN CÓ SỔ. GIÁ TRÊN SÀO."
- "Đất nông nghiệp có dòng tiền." (tagline end card)
- "QHSDĐ · TỪNG TỜ THỦA"

## Màu (CSS vars trong composition)
| biến | hex | dùng cho |
|---|---|---|
| `--blue` | #006AFF | brand, badge "Chính chủ", tag quy hoạch, logo pill |
| `--gold` | #f2b32b | giá / sào, pill giá trên bản đồ |
| `--paper` | #f6f1e7 | card tin đăng, chữ sáng trên nền tối |
| `--ink` | #16211a | chữ đậm trong card sáng |
| bg forest | gradient #12301f→#0c1f14→#081408 | nền chính |
| verified | #1E8E3E | badge "Sổ đỏ" |
| muted | #9ec9ae | kicker, tagline phụ |
| QH zones | LUC #d4b544 / ONT #d4526e / CLN #4a9e63 | lớp quy hoạch |

## Font
- `assets/fonts/Inter-var.woff` (100-900) — body, số liệu phụ
- `assets/fonts/Poppins-700.woff`, `Poppins-800.woff` — headline, giá
- Nguồn: lấy từ `films/dtnn-launch/assets/fonts/` (đã verify render đúng tiếng Việt có dấu)

## Logo
`brand-kit/logo.svg` — pill xanh #006AFF bo góc + lá trắng.

## Data mẫu thật (tin trên sàn)
| tin | diện tích | vị trí | giá | /sào |
|---|---|---|---|---|
| Rẫy sầu riêng Ri6 | 12,5 ha | Quốc lộ 14 · Buôn Ma Thuột | 10,6 tỷ | 85 tr |
| Rẫy cà phê 2 hồ suối | 4,6 ha | Quảng Tân · Gia Nghĩa | 5 tỷ | 109 tr |
| Đất farm 3 hồ nước | 2,2 ha | gần QL28 · Bắc Gia Nghĩa | 3 tỷ | 136 tr |

## Quy ước khung hình
- Ngang 1920×1080 cho YouTube/landing. Dọc 1080×1920 cho TikTok/Reels/Shorts
  (đổi `data-width`/`data-height` trên `#film` — nhớ bố cục lại).
- Nhạc: 120 BPM, style `pulse`, drop đặt ở scene "kill feature", ending `button`.
