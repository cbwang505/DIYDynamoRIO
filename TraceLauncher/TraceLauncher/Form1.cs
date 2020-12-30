using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace TraceLauncher
{
	public partial class Form1 : Form
	{
		public Form1()
		{
			InitializeComponent();

		}

		private void button1_Click(object sender, EventArgs e)
		{
			OpenFileDialog fileDialog = new OpenFileDialog();
			fileDialog.Multiselect = false;
			fileDialog.Title = "select file";
			fileDialog.Filter = "application|*.exe"; //设置要选择的文件的类型
			if (fileDialog.ShowDialog() == DialogResult.OK)
			{
				Start_Program.Text = fileDialog.FileName;//返回文件的完整路径
				Generate_Windbg_Argument();
			}
		}

		private void button2_Click(object sender, EventArgs e)
		{
			OpenFileDialog fileDialog = new OpenFileDialog();
			fileDialog.Multiselect = false;
			fileDialog.Title = "select file";
			fileDialog.Filter = "application|*.exe"; //设置要选择的文件的类型
			fileDialog.FileName = "drrun.exe";
			if (fileDialog.ShowDialog() == DialogResult.OK)
			{
				Drrun_Path.Text = fileDialog.FileName;//返回文件的完整路径                
			}
		}

		private void button6_Click(object sender, EventArgs e)
		{
			OpenFileDialog fileDialog = new OpenFileDialog();
			fileDialog.Multiselect = false;
			fileDialog.Title = "select file";
			fileDialog.Filter = "application|*.exe"; //设置要选择的文件的类型
			fileDialog.FileName = "drconfig.exe";
			if (fileDialog.ShowDialog() == DialogResult.OK)
			{
				Drconfig_Path.Text = fileDialog.FileName;//返回文件的完整路径                
			}
		}

		private void button3_Click(object sender, EventArgs e)
		{
			OpenFileDialog fileDialog = new OpenFileDialog();
			fileDialog.Multiselect = false;
			fileDialog.Title = "select file";
			fileDialog.Filter = "plugin|*.dll"; //设置要选择的文件的类型
			if (fileDialog.ShowDialog() == DialogResult.OK)
			{
				Plugin_Path.Text = fileDialog.FileName;//返回文件的完整路径                
			}
		}

		private static string windbg_cmd =
			"-c \"$$>a< {0} {1}\" -pn {2}";
		private void button4_Click(object sender, EventArgs e)
		{
			FolderBrowserDialog dialog = new FolderBrowserDialog();
			dialog.Description = "folder browser";
			if (dialog.ShowDialog() == DialogResult.OK)
			{
				//获取选择的目录路径
				Logger_Dir.Text = dialog.SelectedPath;
				Generate_Windbg_Argument();
			}

		}

		private void Generate_Windbg_Argument()
		{
			if (!string.IsNullOrEmpty(Windbg_Script.Text) && !string.IsNullOrEmpty(Logger_Dir.Text) &&
				!string.IsNullOrEmpty(Start_Program.Text))
			{
				Windbg_Argument.Text = string.Format(windbg_cmd, Windbg_Script.Text,
					Path.Combine(Logger_Dir.Text, "symbol-dump-"+DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + ".txt"), Path.GetFileName(Start_Program.Text));
			}
		}

		private void start_Click(object sender, EventArgs e)
		{

			try
			{



				System.Diagnostics.Process p = new System.Diagnostics.Process();
				p.StartInfo.FileName = Drrun_Path.Text;
				p.StartInfo.Arguments = Dump_Args();
				p.Start();
			}
			catch (Exception exception)
			{
				MessageBox.Show(exception.Message);
			}
		}

		private void AutoCmdline_Changed(object sender, EventArgs e)
		{
			AutoCmdline();
		}

		private void AutoCmdline()
		{
			CMD_Line.Text = "\"" + Drrun_Path.Text + "\" " + Dump_Args();
		}
		private string Dump_Args()
		{
			try
			{


				StringBuilder sb = new StringBuilder();
				if (verbose.Checked)
				{
					sb.Append("-verbose ");
				}

				if (disable_traces.Checked)
				{
					sb.Append("-disable_traces ");
				}

				sb.Append("-c \"" + Plugin_Path.Text + "\" ");
				sb.Append("-logdir \"" + Logger_Dir.Text + "\" ");

				if (dump_text.Checked)
				{
					sb.Append("-dump_text ");
				}

				if (alway_instruction.Checked)
				{
					sb.Append("-always_instruction ");
				}
				else
				{
					if (trace_module.Checked)
					{
						sb.Append("-trace_module " + trace_module_value.Text + " ");
					}

					if (target_module.Checked)
					{
						sb.Append("-target_module " + target_module_value.Text + " ");
					}

					if (from_module.Checked)
					{
						sb.Append("-from_module " + from_module_value.Text + " ");
					}

					if (target_offset.Checked && target_method.Checked)
					{
						MessageBox.Show("target_offset conflict with target_method");
						return "";
					}

					if (target_offset.Checked)
					{
						sb.Append("-target_offset " + target_offset_value.Text + " ");
					}

					if (target_method.Checked)
					{
						sb.Append("-target_method " + target_method_value.Text + " ");
					}

					if (follow_func.Checked & restrict_func.Checked)
					{
						MessageBox.Show("follow_func conflict with restrict_func");
						return "";
					}

					if (follow_func.Checked)
					{
						sb.Append("-follow_func ");
					}

					if (restrict_func.Checked)
					{
						sb.Append("-restrict_func ");
					}

					if (call_convention.Checked&& call_convention_value.SelectedIndex>=0)
					{
						sb.Append("-call_convention " + call_convention_value.SelectedItem.ToString() + " ");
					}
				}

				sb.Append("-- \"" + Start_Program.Text + "\" " + Program_Argument.Text);
				return sb.ToString();

			}
			catch (Exception e)
			{
				return "";
			}
		}

		private void nudge_Click(object sender, EventArgs e)
		{
			System.Diagnostics.Process p = new System.Diagnostics.Process();
			p.StartInfo.FileName = Drconfig_Path.Text;
			p.StartInfo.Arguments = "-nudge_pid " + pid.Text + " 0 67";
			p.Start();
		}

		private void button7_Click(object sender, EventArgs e)
		{
			OpenFileDialog fileDialog = new OpenFileDialog();
			fileDialog.Multiselect = false;
			fileDialog.Title = "select file";
			fileDialog.Filter = "application|*.exe"; //设置要选择的文件的类型
			fileDialog.FileName = "windbg.exe";
			if (fileDialog.ShowDialog() == DialogResult.OK)
			{
				Windbg_Path.Text = fileDialog.FileName;//返回文件的完整路径                
			}
		}

		private void button5_Click(object sender, EventArgs e)
		{
			if (!string.IsNullOrEmpty(Windbg_Script.Text) && !string.IsNullOrEmpty(Logger_Dir.Text) &&
				!string.IsNullOrEmpty(Start_Program.Text))
			{
				System.Diagnostics.Process p1 = new System.Diagnostics.Process();
				p1.StartInfo.FileName = Start_Program.Text;
				p1.StartInfo.Arguments = Program_Argument.Text;
				p1.Start();
				Thread.Sleep(10000);
				System.Diagnostics.Process p = new System.Diagnostics.Process();
				p.StartInfo.FileName = Windbg_Path.Text;
				p.StartInfo.Arguments = Windbg_Argument.Text;
				p.Start();
			}
			else
			{
				if (string.IsNullOrEmpty(Windbg_Script.Text))
				{
					MessageBox.Show("Windbg Script Path Is Empty");
				}
				if (string.IsNullOrEmpty(Logger_Dir.Text))
				{
					MessageBox.Show("Logger Dir Path Is Empty");
				}
				if (string.IsNullOrEmpty(Start_Program.Text))
				{
					MessageBox.Show("Start Program Path Is Empty");
				}

			}
		}

		private void button8_Click(object sender, EventArgs e)
		{
			OpenFileDialog fileDialog = new OpenFileDialog();
			fileDialog.Multiselect = false;
			fileDialog.Title = "select file";
			fileDialog.Filter = "All files(*.*)|*.*"; //设置要选择的文件的类型
			if (fileDialog.ShowDialog() == DialogResult.OK)
			{
				Windbg_Script.Text = fileDialog.FileName;//返回文件的完整路径 
				Generate_Windbg_Argument();
			}
		}
		/// <summary>
		/// 获取路径下所有文件以及子文件夹中文件
		/// </summary>
		/// <param name="path">全路径根目录</param>
		/// <param name="FileList">存放所有文件的全路径</param>
		/// <param name="RelativePath"></param>
		/// <returns></returns>
		public static void SearchFile(string path, string fileName, ref string smallDir)
		{
			DirectoryInfo dir = new DirectoryInfo(path);
			FileInfo[] fil = dir.GetFiles();
			DirectoryInfo[] dii = dir.GetDirectories();
			foreach (FileInfo f in fil)
			{

				//Console.WriteLine(name);
				if (f.Name.Contains(fileName))
				{

					smallDir = f.FullName;
					return;

				}
			}
			//获取子文件夹内的文件列表，递归遍历
			foreach (DirectoryInfo d in dii)
			{
				if (smallDir == "")
					SearchFile(d.FullName, fileName, ref smallDir);
			}
		}

		private void AutoCheck_Click(object sender, EventArgs e)
		{
			Auto_Detect();
		}

		private void Auto_Detect()
		{
			string dumpsymbol_path = "";
			string drrun_path = "";
			string drconfig_path = "";
			string niii_path = "";
			SearchFile(new DirectoryInfo(Environment.CurrentDirectory).Parent.FullName, "dumpsymbol.wdbg", ref dumpsymbol_path);
			if (!string.IsNullOrEmpty(dumpsymbol_path))
			{
				Windbg_Script.Text = dumpsymbol_path;
			}
			SearchFile(new DirectoryInfo(Environment.CurrentDirectory).Parent.FullName, "drrun.exe", ref drrun_path);
			if (!string.IsNullOrEmpty(drrun_path))
			{
				Drrun_Path.Text = drrun_path;
			}
			SearchFile(new DirectoryInfo(Environment.CurrentDirectory).Parent.FullName, "drconfig.exe", ref drconfig_path);
			if (!string.IsNullOrEmpty(drconfig_path))
			{
				Drconfig_Path.Text = drconfig_path;
			}
			SearchFile(new DirectoryInfo(Environment.CurrentDirectory).Parent.FullName, "niii.dll", ref niii_path);
			if (!string.IsNullOrEmpty(niii_path))
			{
				Plugin_Path.Text = niii_path;
			}

			string windh_path1 = @"C:\Program Files (x86)\Windows Kits\10\Debuggers\x86\windbg.exe";
			string windh_path3 = @"C:\Program Files (x86)\Windows Kits\8.1\Debuggers\x86\windbg.exe";
			string windh_path2 = @"C:\Program Files (x86)\Debugging Tools for Windows (x86)\windbg.exe";
			if (File.Exists(windh_path1))
			{
				Windbg_Path.Text = windh_path1;
			}
			else if (File.Exists(windh_path2))
			{
				Windbg_Path.Text = windh_path2;
			}
			else if (File.Exists(windh_path3))
			{
				Windbg_Path.Text = windh_path3;
			}
			Generate_Windbg_Argument();
		}
	}
}
