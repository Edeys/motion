# AGENTS.md — motion-studio

> Khung làm video motion-graphic bằng AI (pipeline `huashu-motion` của 花叔 / @alchaincyf, MIT).
> Đọc kỹ trước khi tạo/sửa bất kỳ film nào.

## Khái niệm 1 câu
Mỗi video = 1 folder trong `films/<tên>/` chứa MỘT file `index.html` (composition) +
`treatment.md` (kịch bản đạo diễn) + `assets/` + `out/`. Agent code animation bằng
GSAP timeline **paused** đăng ký vào `window.__timelines`; CLI `om` render ra MP4.

## Cài môi trường (1 lần/máy)
- Node 22+, Chrome/Chromium/Edge, FFmpeg (`ffmpeg -version`).
- Skill: `npx skills add alchaincyf/huashu-motion` (agent nào đọc SKILL.md cũng được —
  Claude Code / Codex / T3 Code / Devin).
- CLI `om`: trong repo clone `alchaincyf/huashu-motion` nó ở
  `skills/huashu-motion/bin/om`; hoặc `npx --yes huashu-motion <lệnh>` (Windows dùng
  cách này — `bin/om` là shell script, không chạy trên cmd/PowerShell thuần).
- **Linux gotcha**: om không tự tìm được Chrome → `export OM_CHROME=<đường dẫn
  chrome>` trước mọi lệnh om. Windows/macOS thường tự tìm được.

## Contract BẮT BUỘC trong index.html (om-engine dựa vào đây)
1. Root `#film` có `data-composition-id` + `data-width` + `data-height`.
2. `window.__timelines['<id>'] = gsap.timeline({ paused: true })`.
3. Vars sửa-được-khai báo trên `<html data-composition-variables>`; trong DOM bind
   bằng `data-var-text="<id>"` hoặc CSS `var(--<id>)` **và biến phải được khai báo**
   (thiếu khai báo → `var(--x)` trống → chữ tàng hình — đã từng bug).
4. `data-om-id` trên phần tử muốn bấm-sửa trong `om studio`.
5. Label scene: `tl.addLabel('scene:<tên>', <giây>)`.
6. Nhạc/SFX qua `OM.music({style, brand, drop:'sceneId', ending:'button', bpm})`,
   `OM.sfx('<name>', <at>)`, `OM.beat(n)` — đặt cut/hit lên lưới nhịp.
7. Chỉ MỘT file `*.html` composition ở root của folder film.
8. Ẩn trạng thái đầu bằng `gsap.set`, KHÔNG bằng CSS `opacity:0` — và mọi phần tử
   bị set ẩn phải có tween khôi phục (bug đã gặp: `gsap.set('#s-x > *')` giấu luôn
   container legend không được restore).

## Quy trình 1 film (đừng bỏ bước nhìn hình)
1. `cp -r films/_template films/<slug>` (hoặc `bin/new-film.sh <slug>`).
2. Viết `treatment.md` (1 claim duy nhất, kill feature, scene list, BPM).
3. Code `index.html` — copy font từ `films/dtnn-launch/assets/fonts/` nếu có tiếng Việt.
4. `om check films/<slug>` → 0 lỗi.
5. `om still films/<slug> --at <các poster>` → **mở PNG nhìn bằng mắt**, sửa đến đẹp.
6. `om sound films/<slug>` (tự render lại trong `om render` cũng được).
7. `om render films/<slug>` → `out/*.mp4` → `om qa out/*.mp4`.

## Luật cứng
- KHÔNG render khi chưa nhìn still. KHÔNG giao MP4 khi chưa `om qa`.
- Chữ tiếng Việt phải verify bằng still (dấu chồng Ổ/Ộ/Ữ dễ gãy trên font thiếu glyph).
- `out/*.mp4` và `assets/sound.wav` là output, không cần giữ trong git (xem .gitignore).
- Vendor `vendor/gsap.min.js` + `vendor/om.js` copy 1 lần cho cả repo, films/_template
  và mọi film dùng đường tương đối `../../vendor/`.
- Brand kit dùng chung ở `brand-kit/` — sửa màu/font/claim ở đó, không hardcode rải rác.
