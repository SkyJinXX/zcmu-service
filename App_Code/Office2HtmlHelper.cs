using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Office.Core;
using Word = Microsoft.Office.Interop.Word;

/// <summary>
/// Office2HtmlHelper 的摘要说明
/// </summary>
public class Office2HtmlHelper
{
    /// <summary>
    /// Word转成Html
    /// </summary>
    /// <param name="path">要转换的文档的路径</param>
    /// <param name="savePath">转换成html的保存路径</param>
    /// <param name="wordFileName">转换成html的文件名字</param>
    public static void Word2Html(string path, string savePath, string wordFileName)
    {

        Word.ApplicationClass word = new Word.ApplicationClass();
        Type wordType = word.GetType();
        Word.Documents docs = word.Documents;
        Type docsType = docs.GetType();
        Word.Document doc = (Word.Document)docsType.InvokeMember("Open", System.Reflection.BindingFlags.InvokeMethod, null, docs, new Object[] { (object)path, true, true });
        Type docType = doc.GetType();
        string strSaveFileName = savePath + wordFileName + ".html";
        object saveFileName = (object)strSaveFileName;
        docType.InvokeMember("SaveAs", System.Reflection.BindingFlags.InvokeMethod, null, doc, new object[] { saveFileName, Word.WdSaveFormat.wdFormatFilteredHTML });
        docType.InvokeMember("Close", System.Reflection.BindingFlags.InvokeMethod, null, doc, null);
        wordType.InvokeMember("Quit", System.Reflection.BindingFlags.InvokeMethod, null, word, null);

    }
}