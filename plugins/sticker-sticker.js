import { sticker } from '../lib/sticker.js'
import uploadFile from '../lib/uploadFile.js'
import uploadImage from '../lib/uploadImage.js'
import { webp2png } from '../lib/webp2mp4.js'

let handler = async (m, { conn, args, usedPrefix, command }) => {
  let stiker = false
  let user = db.data.users[m.sender]
  let time = user.lastmining + 10000 //tiempo de espera en min
if (new Date - user.lastmiming < 10000) return await conn.reply(m.chat, `*ESPERA UNOS MINUTOS PARA USAR OTRO COMANDO*`,  m)
  try {
  	
    let q = m.quoted ? m.quoted : m
    let mime = (q.msg || q).mimetype || q.mediaType || ''
    if (/webp|image|video/g.test(mime)) {
      if (/video/g.test(mime)) if ((q.msg || q).seconds > 11) return m.reply('『𝑰𝑵𝑭𝑶𝑹𝑴𝑨𝑪𝑰𝑶𝑵\n\n𝑬𝑳 𝑽𝑰𝑫𝑬𝑶 𝑵𝑶 𝑫𝑬𝑩𝑬 𝑫𝑼𝑹𝑨𝑹 𝑴𝑨𝑺 𝑫𝑬 *6* 𝑺𝑬𝑮𝑼𝑵𝑫𝑶𝑺')
      let img = await q.download?.()
      if (!img) throw `*『𝑰𝑵𝑭𝑶𝑹𝑴𝑨𝑪𝑰𝑶𝑵』*\n\n𝑹𝑬𝑪𝑼𝑬𝑹𝑫𝑨 𝑹𝑬𝑺𝑷𝑶𝑵𝑫𝑬𝑹 𝑨 𝑼𝑵𝑨 𝑰𝑴𝑨𝑮𝑬𝑵 𝑶𝑯 𝑸𝑼𝑬 𝑻𝑬𝑹𝑴𝑰𝑵𝑬 𝑬𝑵 .png ?𝑽𝑼𝑬𝑳𝑽𝑬𝑨 𝑨 𝑰𝑵𝑻𝑬𝑵𝑻𝑨𝑹𝑳𝑶 Y Luego Usa Tecla .S!!*${usedPrefix + command}*_`
      let out
      try {
        stiker = await sticker(img, false, global.pegatina, global.creador)
      } catch (e) {
        console.error(e)
      } finally {
      await conn.reply(m.chat, `${eg} 𝑪𝑹𝑬𝑨𝑵𝑫𝑶 𝑺𝑻𝑰𝑪𝑲𝑬𝑹, 𝑨𝑮𝑼𝑨𝑹𝑫𝑬 𝑼𝑵 𝑴𝑶𝑴𝑬𝑵𝑻𝑶..`, m)
        if (!stiker) {
          if (/webp/g.test(mime)) out = await webp2png(img)
          else if (/image/g.test(mime)) out = await uploadImage(img)
          else if (/video/g.test(mime)) out = await uploadFile(img)
          if (typeof out !== 'string') out = await uploadImage(img)
          stiker = await sticker(false, out, global.packname, global.author)
        }
      }
    } else if (args[0]) {
      if (isUrl(args[0])) stiker = await sticker(false, args[0], global.pegatina, global.creador)
      else return m.reply('URL invalido')
    }
  } catch (e) {
    console.error(e)
    if (!stiker) stiker = e
  } finally {
     if (stiker) conn.sendFile(m.chat, stiker, 'sticker.webp', '',m, true, { contextInfo: { 'forwardingScore': 200, 'isForwarded': false, externalAdReply:{ showAdAttribution: false, title: wm, body: `h`, mediaType: 2, sourceUrl: nn, thumbnail: imagen1}}}, { quoted: m })
    else throw '『𝑰𝑵𝑭𝑶𝑹𝑴𝑨𝑪𝑰𝑶𝑵』\n\n𝑹𝑬𝑪𝑼𝑬𝑹𝑫𝑨 𝑹𝑬𝑺𝑷𝑶𝑵𝑫𝑬𝑹 𝑨 𝑼𝑵𝑨 𝑰𝑴𝑨𝑮𝑬𝑵 𝑶𝑯 𝑸𝑼𝑬 𝑻𝑬𝑹𝑴𝑰𝑵𝑬 𝑬𝑵 .png 𝒀    𝑽𝑼𝑬𝑳𝑽𝑨  𝑨 𝑰𝑵𝑻𝑬𝑵𝑻𝑨𝑹𝑳𝑶!!'
  }
user.lastmiming = new Date * 1
}
handler.help = ['sticker']
handler.tags = ['sticker']
handler.command = ['s', 'sticker', 'stiker'] 

export default handler

function msToTime(duration) {
var milliseconds = parseInt((duration % 1000) / 100),
seconds = Math.floor((duration / 1000) % 60),
minutes = Math.floor((duration / (1000 * 60)) % 60),
hours = Math.floor((duration / (1000 * 60 * 60)) % 24)

hours = (hours < 10) ? "0" + hours : hours
minutes = (minutes < 10) ? "0" + minutes : minutes
seconds = (seconds < 10) ? "0" + seconds : seconds

return minutes + " m y " + seconds + " s " 
}

const isUrl = (text) => {
  return text.match(new RegExp(/https?:\/\/(www\.)?[-a-zA-Z0-9@:%._+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_+.~#?&/=]*)(jpe?g|gif|png)/, 'gi'))
}
