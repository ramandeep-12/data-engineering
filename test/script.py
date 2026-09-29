from pathlib import Path

curr_dir=Path.cwd()
current_file=Path(__file__).name

print(f"Files in {curr_dir}")

for i in curr_dir.iterdir():
    if(i.name==current_file):
        continue
    print(f" -{i.name}")

    if i.is_file():
        content=i.read_text(encoding='utf=8')
        print(f" content: {content}")