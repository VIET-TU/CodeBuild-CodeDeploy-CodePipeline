#Yêu cầu:​
#*Sử dụng lại resource của bài lab 6 và lab 7
# Modify job deploy, chuyển thành chiến lược deploy theo kiểu canary.​
# Cấu hình chiến lược deploy theo kiểu canary​
# Start: 25% nodes, Waiting time: 5 minutes.​
# Điều chỉnh số lượng task trong ECS lên 4 tasks.
# Update source code, push, kiểm tra kết quả trigger pipeline.
# Kiểm tra trạng thái của CodeBuild, CodeDeploy.
# Kiểm tra và truy cập thông qua ALB -> 25% request nhận version mới.​
# Đợi hết thời gian waiting -> truy cập ALB -> 100% traffic chuyển sang new version.


Dự án này tập trung vào việc triển khai các pipeline CI/CD trên AWS để tự động hóa quá trình kiểm thử, build, và triển khai ứng dụng. Các công nghệ chính bao gồm AWS CodeCommit để quản lý mã nguồn, AWS CodeBuild để build dự án, và AWS CodePipeline để tạo các quy trình tự động giữa các bước kiểm tra, build, và triển khai. AWS Elastic Beanstalk được sử dụng để triển khai các ứng dụng Java, trong khi Amazon ECS và ECR được sử dụng để quản lý và lưu trữ Docker images. Dự án triển khai các chiến lược khác nhau như All-At-Once, Rollout, Blue-Green và Canary để triển khai ứng dụng theo từng phần hoặc toàn bộ, đảm bảo việc cập nhật ứng dụng diễn ra an toàn và linh hoạt. Các bước chính bao gồm tạo repository trên CodeCommit, tạo các job CodeBuild để checkout mã nguồn từ CodeCommit, build mã, tạo artifact và push lên S3 hoặc ECR. Sau đó, sử dụng CodePipeline để liên kết các bước này với việc triển khai trên Elastic Beanstalk hoặc ECS. Dự án cũng bao gồm các chiến lược triển khai phức tạp như Rollout (triển khai dần dần), Blue-Green (triển khai song song hai phiên bản), và Canary (triển khai theo phần trăm lưu lượng). Cuối cùng, các tính năng như thông báo sự kiện và bước phê duyệt thủ công trong CodeDeploy giúp đảm bảo việc triển khai được quản lý và kiểm soát chặt chẽ.