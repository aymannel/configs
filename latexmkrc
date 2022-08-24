$pdf_previewer = 'open -a Skim';
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode %O %S';
@generated_exts = (@generated_exts, 'synctex.gz');
