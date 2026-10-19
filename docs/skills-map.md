# Bản đồ skills cho pipeline video AI

Tất cả từ hệ 花叔 (@alchaincyf), MIT, cài bằng `npx skills add alchaincyf/<tên>`
hoặc `git clone <repo> ~/.claude/skills/<tên>`.

## Bộ cốt lõi cho repo này

| Skill | Vai trò trong pipeline | Khi nào dùng |
|---|---|---|
| **huashu-motion** | Render video motion-graphic (engine của repo này) | Video giới thiệu sản phẩm/tính năng, launch film, clip quảng cáo ngắn |
| **huashu-art-motion** | Animation nghệ thuật + explainer (35 style vẽ, 9 ngữ pháp, điều khiển theo lời đọc) | Video giải thích có voice-over, motion comic, whiteboard |
| **huashu-video-outline** | Tạo 2-3 phương án dàn ý video (tiêu đề + thumbnail + cấu trúc) | Trước khi viết treatment |
| **huashu-video-check** | Check title/thumbnail/hook theo chiến lược MrBeast (CTR) | Sau render, trước khi đăng |
| **huashu-script-polish** | Làm script đọc tự nhiên, bỏ văn viết | Mọi video có lời bình/narration |
| **huashu-gpt-image** | Prompt engineering cho ảnh AI (cover, poster, infographic) | Thumbnail YouTube, poster quảng cáo, asset tĩnh chèn vào film |
| **huashu-design** | Thiết kế HTML: prototype/slide/poster 20 style | Frame phức tạp, landing screenshot, nền đồ họa cho film |
| **seedance-skill** | Sinh video AI thật (Seedance, điều khiển bằng white-model + scene.json) | Cảnh flycam/cinematic ghép vào motion-graphic (cần tài khoản Seedance) |
| **huashu-douyin-script** | Workflow script TikTok/Douyin: bóc video đối thủ → công thức viral → script + phân cảnh | Video dọc shorts/reels bán đất, ads ngắn |
| **huashu-speech-coach** | Cấu trúc bài nói (Patrick Winston) | Video tự quay có anh nói / webinar |
| **darwin-skill** | Tự tiến hóa skill: chấm 9 tiêu chí → sửa → judge → giữ/revert | Khi muốn "huashu-motion bản WENDEL" — chẳng hạn skill tự nhớ brand-kit + gu màu Tây Nguyên |
| **nuwa-skill** | Chưng cất tư duy 1 người thành skill | Distill style của 1 kênh video anh thích → "đạo diễn riêng" |
| **mrbeast-skill** (persona) | Tư duy retention/CTR của MrBeast | Soi lại hook + pacing trước khi chốt treatment |

## Gợi ý 4 pipeline kết hợp

**A. Launch film (đã làm mẫu `dtnn-launch`)**
`motion` đơn — treatment → composition → sound → render → qa.

**B. Explainer có voice-over**
`video-outline` → viết script → `script-polish` → `art-motion` (口播-driven) → `video-check`.

**C. Hybrid footage + motion**
`seedance` quay cảnh cinematic → cắt vào `motion` composition (om hỗ trợ `<video>`) → `video-check`.

**D. Video dọc TikTok/Reels bán đất**
`douyin-script` cho công thức + phân cảnh → `motion` render 1080×1920 → `video-check`.

## Skills xung quanh video (SEO + công cụ)

| Skill | Dùng để | Phù hợp khi |
|---|---|---|
| **tramstop-skill** | Bỏ "mùi AI" bài viết: chẩn đoán 4 lớp AI-vibe (từ→câu→cấu trúc→kinh nghiệm) + viết lại bằng vật liệu thật, không được bịa | Script voice-over + bài SEO nghe như người thật |
| **huashu-report** | Report chuẩn Stanford/McKinsey (6 mẫu + thư viện chart) | "Báo cáo giá đất Đắk Nông quý X" từ data sàn → linkbait/E-E-A-T |
| **huashu-excel** | Dọn + đối chiếu data Excel | Lọc bảng tin đăng, số liệu trước khi đưa vào video/report |
| **huashu-chrome** | MCP + extension: agent lái Chrome thật giữ login | Đăng video/bài lên FB group, vào dashboard cần login |
| **fanbox** | App "buồng lái vibe coding": file + terminal + diff 1 màn | Anh nhìn agent làm việc trực quan, không phải đọc diff |
| **freud-skill** | Chẩn đoán tại sao skill/prompt không chạy đúng | Khi một skill trong kho cho kết quả lạ |
| **skills-guide** | Cẩm nang tự viết skill | Viết skill riêng (vd. wendel-brand-skill từ brand-kit) |

## Cài nhanh bộ khuyên dùng cho repo này
```sh
npx skills add alchaincyf/huashu-motion
npx skills add alchaincyf/huashu-art-motion
npx skills add alchaincyf/huashu-design
npx skills add alchaincyf/huashu-gpt-image
npx skills add alchaincyf/tramstop-skill
npx skills add alchaincyf/huashu-report
npx skills add alchaincyf/huashu-chrome
# trong repo huashu-skills (built-in skills):
git clone https://github.com/alchaincyf/huashu-skills /tmp/hs
cp -r /tmp/hs/huashu-video-outline /tmp/hs/huashu-video-check /tmp/hs/huashu-script-polish /tmp/hs/huashu-douyin-script ~/.claude/skills/
```
