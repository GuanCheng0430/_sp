# mul3.s - 使用 GNU彙編語法 (x86-64)
# 輸入：a in rdi, b in rsi, c in rdx
# 回傳值：rax

    .text
    .globl mul3
mul3:
    imul rdi, rsi      # rdi = a * b
    imul rdi, rdx      # rdi = (a*b) * c
    mov rax, rdi       # 將結果放入 rax 作為回傳值
    ret
