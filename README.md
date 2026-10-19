# motion-studio

Khung repo chuẩn để làm video motion-graphic bằng AI agent — dựa trên pipeline
[huashu-motion](https://github.com/alchaincyf/huashu-motion) (MIT) của 花叔.

Ý tưởng: **video = code**. Mỗi film là một `index.html` chứa GSAP timeline paused;
CLI `om` seek timeline, chụp frame bằng Chrome, ghép bằng FFmpeg, tự phổ nhạc +
SFX. Không Premiere, không After Effects — agent viết code, bạn duyệt hình.

```
motion-studio/
├── AGENTS.md            ← luật + contract + quy trình (agent đọc file này)
├── vendor/              ← gsap.min.js + om.js (dùng chung)
├── brand-kit/           ← palette/font/logo/claim của dautudatnongnghiep.com
├── docs/skills-map.md   ← bản đồ các skill nên cài kèm
├── bin/new-film.sh      ← tạo film mới từ template
└── films/
    ├── _template/       ← khung film trống đúng contract
    └── dtnn-launch/     ← video mẫu đã render (22s, có nhạc+SFX) → out/*.mp4
```

## Bắt đầu nhanh (đã cài deps)
```sh
# 1. clone huashu-motion lấy CLI om (hoặc npx huashu-motion ... trên Windows)
git clone https://github.com/alchaincyf/huashu-motion ~/huashu-motion
export OM_CHROME=$(which google-chrome || which chromium)   # chỉ cần trên Linux

# 2. tạo film mới và làm theo treatment.md + AGENTS.md
cp -r films/_template films/ten-film-moi

# 3. chạy pipeline (trỏ đúng folder film)
~/huashu-motion/skills/huashu-motion/bin/om check films/ten-film-moi
~/huashu-motion/skills/huashu-motion/bin/om still films/ten-film-moi --at 2,8,18
~/huashu-motion/skills/huashu-motion/bin/om render films/ten-film-moi
~/huashu-motion/skills/huashu-motion/bin/om qa films/ten-film-moi/out/*.mp4
```

## Cài deps (1 lần)
- Node 22+ · Chrome/Chromium/Edge · FFmpeg
- `npx skills add alchaincyf/huashu-motion` — cài skill vào agent (T3 Code/Claude/Codex)
- Windows: gọi `npx --yes huashu-motion <lệnh>` thay `om <lệnh>` (bin/om là sh).

## Skills nên cài kèm — xem `docs/skills-map.md`
