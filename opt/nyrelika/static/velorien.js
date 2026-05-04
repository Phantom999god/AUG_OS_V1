function Neruma_Initialize_Luma(){
  const d=document.getElementById("dna-inhaler");
  for(let i=1;i<=62;i++)d.innerHTML+=`Node ${i}: <span id=n${i}>idle</span><br>`;
  setInterval(()=>{fetch("http://localhost:8000/api/nodes").then(r=>r.json()).then(j=>{Object.entries(j).forEach(([k,v])=>document.getElementById("n"+k).textContent=v)})},1000);
}
Neruma_Initialize_Luma();
