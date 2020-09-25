
// 创建异步的进程的方法


// 第一种方法使用exec 来创建
const exec = require('child_process').exec;
const execFile = require('child_process').execFile;
const fork = require('child_process').fork;

function execute(cmd) {
  exec(cmd, { stdio: 'inherit' },(error, stdout, stderr)=>{
       console.log("执行完成");
       console.log(stdout)
       console.log(stderr)
  });
}

// 执行文本文件和可执行的shell命令
execute("./a.sh");
execute("ls");



// 第二种方式创建异步的进程

function execute_file(cmd){
  execFile(cmd, (error, stdout, stderr) =>{
       console.log("execute_file_执行完成");
       console.log(error);
       console.log(stdout);
       console.log(stderr);
  })
}

execute_file("./a.sh");
execute_file("pwd");


// 第三种创建异步的进程的方式
// 执行一个文件
function fork_file(cmd){
     fork(cmd)
}

fork_file('console.js');


const { spawn } = require('child_process');
const ls = spawn('ls', ['-lh', '/usr']);

ls.stdout.on('data', (data) => {
  console.log(`stdout: ${data}`);
});

ls.stderr.on('data', (data) => {
  console.error(`stderr: ${data}`);
});

ls.on('close', (code) => {
  console.log(`子进程退出，退出码 ${code}`);
});