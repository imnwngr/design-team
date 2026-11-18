# Design Team

Skill giúp Codex chọn phương pháp thiết kế theo brief từ danh sách 12 repo. Codex đọc dự án, xác định hướng thiết kế, chọn skill cho từng việc rồi lập kế hoạch, review hoặc triển khai theo yêu cầu. [English](README.md)

## Dùng trong dự án

Để thử ngay, yêu cầu Codex đọc đường dẫn đầy đủ đến `skills/design-team/SKILL.md` trong repo này rồi đưa brief. Để gọi bằng `$design-team` trong các phiên sau, chạy từ thư mục repo trong PowerShell.

```powershell
./scripts/Test-Package.ps1
./scripts/Install-Skill.ps1 -WhatIf
./scripts/Install-Skill.ps1
```

Script chép toàn bộ skill và catalog vào `~/.agents/skills/design-team`. Đích cài phải là đường dẫn mới. Muốn dùng riêng cho dự án, truyền `-Destination C:\du-an\.agents\skills\design-team`. Cũng có thể chép thủ công cả thư mục `skills/design-team` vào vị trí này. Mở phiên Codex mới trong dự án cần làm.

| Mục đích | Brief mẫu |
|---|---|
| Lập kế hoạch | `$design-team Lên kế hoạch làm trang đặt lịch cho studio. Dùng bộ nhận diện và luồng đặt lịch đang có. Dừng ở kế hoạch.` |
| Review | `$design-team Review bước nhập địa chỉ của checkout trên điện thoại. Ghi vị trí, bằng chứng và cách sửa đề xuất.` |
| Triển khai | `$design-team Xây trang đặt lịch theo kế hoạch đã chọn. Thử thao tác chính trên điện thoại và desktop.` |
| Vẽ sơ đồ | `$design-team Vẽ quy trình duyệt trong tài liệu thành sơ đồ HTML độc lập, có cả nhánh từ chối.` |

Kế hoạch ghi hướng thiết kế, skill được chọn và cách kiểm tra. Bản review xếp vấn đề theo ảnh hưởng tới người dùng. Lần triển khai bàn giao thay đổi và bằng chứng kiểm tra. Mỗi nguồn trong catalog có đường dẫn đến file hướng dẫn tại commit đã khảo sát. Điều kiện chạy và giấy phép của từng công cụ thuộc về upstream. [Catalog 12 repo](skills/design-team/references/catalog.md) · [Phạm vi kiểm chứng](VALIDATION.md)
