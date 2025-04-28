function allowDrop (ev) {
  ev.preventDefault();
}


function dragleave (ev) {
  ev.preventDefault();
  ev.target.style.borderColor = null;
  console.log("dragleave", ev);
}

function dragenter (ev) {
  ev.preventDefault();
  ev.target.style.borderColor = "#2E72F7";
  console.log("dragenter", ev);
}

function drag (ev) {
  postMessage({
    type: "drag",
  });
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop (ev) {
  ev.preventDefault();
  let data = ev.dataTransfer.getData("text");
  data = data.split("-");
  let id = ev.currentTarget.id;
  console.log("drop", id);
  id = id.split("-");
  postMessage({
    type: "drop",
    data: {
      sn: data[0],
      port: Number(data[1]),
      x: Number(id[2]),
      y: Number(id[3]),
    },
  });
}

function postMessage (data) {
  if (window.ReactNativeWebView)
    window.ReactNativeWebView.postMessage(JSON.stringify(data));
}

function log (data) {
  postMessage({
    type: "log",
    data,
  });
}


function leftRender (data) {
  const htmlStr = data.map((item) => `
     <div class="se">
        <div class="hd">
          <div class="it">
            <img class="" src="./img/icon1.png" alt="">
            <p>${item.sn}</p>
          </div>
        </div>
        <div class="bd">
         ${item.port.map((port) => `<div class="it" id="${item.sn}-${port.port}"  draggable="${port.disabled ? "false" : "true"}" ondragstart="drag(event)">
            <img src="${port.disabled ? "./img/icon3.png" : "./img/icon2.png"}" alt="">
            <p>${item.sn}-${port.port}</p>
          </div>`).join("")}
        </div>
      </div>`).join("");
  const el = $(".l");
  el.children().forEach((el) => el.remove());
  el.append(htmlStr);
}

function rightRender (data) {
  const htmlStr = data.map((row) => `<div class="row">
      ${row.map((col) => `<div class="box ${col.sn ? "fill" : ""} ${col.dragenter ? "dragenter" : ""}" id="${col.sn}-${col.port}-${col.x}-${col.y}" draggable="${col.tooltip || !col.sn ? "false" : "true"}" ondragstart="drag(event)"  ondrop="drop(event)" ondragover="allowDrop(event)" ondragenter="dragenter(event)" ondragleave="dragleave(event)">
        <p>${col.sn ? `${col.sn}-${col.port}` : ""}</p>
        <p>${col.x}-${col.y}</p>
        <div id="tooltip-${col.x}-${col.y}" class="tooltip ${col.tooltip ? "show" : ""}">
         <img src="./img/icon-del.png" alt="">
         <span>${col.tooltipTitle}</span>
        </div>
      </div>`).join("")}
    </div>`).join("");
  const el = $("#box-panel");
  el.children().forEach((el) => el.remove());
  el.append(htmlStr);
}

function onMessage (data) {
  try {
    const jsonData = JSON.parse(data);
    switch (jsonData.type) {
      case "leftRender":
        leftRender(jsonData.data);
        break;
      case "rightRender":
        rightRender(jsonData.data);
        break;
    }
  } finally {
  }
}

$(document).ready(() => {
  //初始化webview事件监听
  //android
  window.document.addEventListener("message", ({ data }) => {
    onMessage(data);
  });
  //ios
  window.addEventListener("message", (event) => {
    if (!event.isTrusted) {
      onMessage(event.data);
    }
  });
  const panel = $("#box-panel");
  //监听盒子点击事件
  panel.on("click", ".box", (ev) => {
    const ids = ev.currentTarget.id.split("-");
    postMessage({
      type: "boxClick",
      data: {
        sn: ids[0] === "undefined" ? undefined : ids[0],
        port: Number(ids[1]),
        x: Number(ids[2]),
        y: Number(ids[3]),
      },
    });
    return false;
  });

  //监听tooltip点击事件
  panel.on("click", ".tooltip", (ev) => {
    const ids = ev.currentTarget.id.split("-");
    postMessage({
      type: "tooltipClick",
      data: {
        x: Number(ids[1]),
        y: Number(ids[2]),
      },
    });
    return false;
  });
  //out click
  $(".ct").on("click", () => {
    postMessage({
      type: "outsidClick",
    });
  });
  //发送加载完成事件
  postMessage({ type: "onReady" });
  //处理手势
  // const maxScale = 5, minScale = 0.8, content = document.getElementById("box-panel"),
  //   container = document.getElementById("container");
  // let lastSize = 4.2, base = (42 + 5) * 10;
  // const hammertime = new Hammer(document.getElementById("touch"));
  // hammertime.get("pinch").set({ enable: true, threshold: .1 });
  // let scaleIndex = 1, scale = 1;
  //
  // hammertime.on("pinchstart", function(ev) {
  //   container.style.overflow = "hidden";
  //   scaleIndex = scale;
  // });
  // hammertime.on("pinchmove", function(ev) {
  //   scale = ev.scale * scaleIndex;
  //   content.style.transform = `scale3d(${scale}, ${scale},0)`;
  // });
  // hammertime.on("pinchend", function(ev) {
  //   // const currentSize = ev.scale * 42;
  //   // content.style.zoom = ev.scale;
  //   // content.style.transform = "";
  //   // container.scrollLeft = container.scrollLeft + (currentSize - lastSize) * 10;
  //   // container.scrollTop = container.scrollTop + (currentSize - lastSize) * 10;
  //   // lastSize = currentSize;
  //   content.style.width = base * scale + "px";
  //   content.style.height = base * scale + "px";
  //   content.style.transform = "";
  //   container.style.overflow = "scroll";
  // });
  // hammertime.on("swipe", function() {
  //   container.style.overflow = "scroll";
  // });
});


