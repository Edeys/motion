# Treatment — OpenDesign · "One brief. Every deliverable." ~22s

## Product read

OpenDesign (`nexu-io/open-design`, 102k sao, Apache-2.0) — workspace design agent cộng tác đầu tiên, local-first, BYOK. Một brief → prototype, dashboard, deck, ảnh, **và motion/video** — tất cả do coding agent đang có sẵn trên máy viết ra.

Điểm khác biệt lớn nhất: **agent bạn đã có là design engine**. Không phải app đóng, không phải subscription bắt buộc, không phải export qua zip. Agent đọc `DESIGN.md` của brand rồi render thẳng.

Shape: claim → mechanism (brief biến thành gì) → bằng chứng (4 loại output) → HyperFrames là mắt xích cuối → brand.
Personality: precise +2, technical +2, confident +1, dry +1, new +2.

## Chosen direction (A · Mechanism-first)

Một **brief** là điểm khởi đầu duy nhất. Brief đó được "nạp" vào 4 surface khác nhau — prototype, dashboard, deck, motion — mỗi surface bung ra từ cùng một khối brief, chứng minh "one brief, every deliverable". Kết bằng HyperFrames: agent viết HTML+CSS+GSAP, Chrome chụp frame, FFmpeg ghép MP4.

Không phải video "giới thiệu tính năng" kiểu liệt kê. Đây là video **cơ chế**: cho thấy cùng một input sinh ra 4 output.

## Palette (lấy từ open-design.ai thật)

| biến | hex | dùng |
|---|---|---|
| `--paper` | `#efe7d2` | nền chính (theme-color thật của site) |
| `--ink` | `#15140f` | chữ, khối đặc |
| `--lime` | `#63fe13` | accent chính, highlight, active state |
| `--lime-soft` | `#d8ffb5` | fill phụ, badge |
| `--grey` | `#8c8c8c` | chữ phụ, đường kẻ |
| `--white` | `#fafafa` | card sáng |

Khác house look dtnn: kem + lime thay vì rừng xanh + gold. Đây là brand của OpenDesign, không phải brand đất.

## Type

- `Poppins 800` — headline, số
- `Inter` — body
- `JetBrains Mono` — code, nhãn kỹ thuật, đường dẫn file

## Rhythm — 120 BPM (beat = 0.5s)

| Thời gian | Scene | Nội dung | SFX |
|---|---|---|---|
| 0–3.0 | `brief` | Chữ "ONE BRIEF." + con trỏ nhấp nháy + dòng lệnh gõ brief | type ×6, enter |
| 3.0–8.5 | `fanout` | Khối brief nứt ra 4 nhánh toả ra 4 card: Prototype / Dashboard / Deck / Motion | whoosh, pop ×4 |
| 8.5–13.0 | `proof` | 4 card xếp thành lưới, mỗi card hiện output thật (wireframe, chart, slide, frame) | tick ×4, thud |
| 13.0–17.5 | `hyperframes` (DROP) | Card Motion phóng to thành hero: `index.html` → Chrome → FFmpeg → `out/*.mp4` | impact, whoosh, paper |
| 17.5–19.5 | `claim` | "ONE BRIEF." / "EVERY DELIVERABLE." + underline lime | impact ×2 |
| 19.5–22.5 | `end` | Logo mark + `open-design.ai` + "Local-first. Open source. BYOK." | chime, pop |

## Kill feature (nhạc drop)

**Scene `hyperframes` tại 13.0 s.** Đây là lúc chứng minh OpenDesign không chỉ làm design tĩnh — nó render được MP4. Drop nhạc đặt đúng lúc card Motion phóng to thành hero. Trước đó nhạc nén dưới, sau đó mở.

## Continuity chain

brief block → nứt thành 4 nhánh → 4 card → card Motion phóng to → bên trong card hiện pipeline HTML→Chrome→FFmpeg→MP4 → pipeline thu lại thành underline của claim → underline phình thành logo mark cuối.

## Four stills to check

`0.8` brief + cursor · `6.0` 4 nhánh toả · `14.0` pipeline trong card · `21.0` end card
