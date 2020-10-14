# �������ăv���O�C�����ǂ�ǂ񃊃X�g�����Ă�������  

�ǂ�ǂ�ǉ����Ă�������  

## �g����  
```bash
git clone https://github.com/mirachan010/vim-pluginlist
cd vim-pluginlist
bash ./MakeInstallListForDein.sh
```
fzf�œ��ꂽ���v���O�C����I���<CR>�Ń��X�g�ɒǉ��I  
��ESC>�ŏI������  
���X�g�ɒǉ����Ă��邩�̃`�F�b�N�͂��Ă��Ȃ��̂ŁA�����̂��ǂ�ǂ�ƕ��΂Ȃ��悤�ɒ��ӂ�  

sample�Ƃ���Shougo/dein.vim���g�p�����ꍇ�̓ǂݍ��܂��邽�߂�.vimrc�������Ă����܂�

```vim:~/.vimrc
let s:dein_dir = expand('~/.cache/vim/dein/')
let g:rc_dir    = expand('~/vim-pluginlist/')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '\dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  let s:toml      = g:rc_dir . 'list.toml'
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif

let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
```

## �t�@�C���\��  
+ CheckedFiles/\*.list  
���܂܂łɊm�F�����l�Ԃ̃��|�W�g��  

+ ./list  
vim-plugins�̃��X�g�{��  

+ ./MakeInstallListForDein.sh  
ReadMe/�ɂ͂����Ă�v���O�C���̃��X�g��fzf�őI�����Ȃ���list.toml���ăt�@�C���ɏo�͂��Ă������  
fzf���K�v�ł�  

+ ./ReadGitHub.sh  
�v���O�C�����ǂ�ǂ�ǉ����Ă����V�F���X�N���v�g  
my-repositories���K�v�ł��B  

```
./ReadGitHub.sh -u user
./ReadGitHub.sh -o orgs
```

+ ./rank.sh  
list�̒��Ń��[�U�[���̌��𐔂��ĊȈՓI�ȃ����L���O���������  
�����܂ŁAlist�̂Ȃ��ɂ�����̌���ō�邩�炠��܂萳�����Ȃ�  

+ ./rank  
�쐬�ς݃t�@�C��  
