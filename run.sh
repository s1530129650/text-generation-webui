
for model_size in 30 65
do
echo ${model_size}
echo ~/msracir001/t-enshengshi/LLM/hf-format/llama-${model_size}b/

python convert_llama_weights_to_hf.py --input_dir ~/msracir001/t-enshengshi/LLM/LLAMA-65B/ --model_size ${model_size}B --output_dir  ~/msracir001/t-enshengshi/LLM/hf-format/
mv ~/msracir001/t-enshengshi/LLM/hf-format/tokenizer/* ~/msracir001/t-enshengshi/LLM/hf-format/llama-${model_size}b/
cp -r ~/msracir001/t-enshengshi/LLM/hf-format/llama-${model_size}b/ models/
done