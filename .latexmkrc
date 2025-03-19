# 确保路径使用正斜杠，兼容Windows
$out_dir = '../temp';

# 设置Windows路径分隔符
$separator = '/';

# PDF生成规则
$pdf_mode = 1;
$pdflatex = 'pdflatex -interaction=nonstopmode -output-directory='.$out_dir.' %O %S';

# 清理规则
$clean_full_ext = 'synctex.gz run.xml';

# 递归搜索路径设置
BEGIN { 
    $ENV{TEXINPUTS} = './source//' . ($ENV{TEXINPUTS} || '');
}

