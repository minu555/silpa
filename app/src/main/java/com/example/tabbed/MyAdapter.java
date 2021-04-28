package com.example.tabbed;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.tabbed.model.BseandNse;

import java.util.ArrayList;
import java.util.List;

public class MyAdapter extends RecyclerView.Adapter<MyAdapter.ViewHolder> {
    private Context context;
    List<BseandNse> dataholder;
    View.OnLongClickListener onLongClickListener;

    public MyAdapter(Context ctx, ArrayList<BseandNse> modelLists){
        this.dataholder=modelLists; }


    @NonNull
    @Override
    public MyAdapter.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater layoutInflater = LayoutInflater.from(parent.getContext());
        View listItem= layoutInflater.inflate(R.layout.card_list, parent, false);
        ViewHolder viewHolder = new ViewHolder(listItem);
        listItem.setOnClickListener(this::onClick);
        return viewHolder;
    }



    @Override
    public void onBindViewHolder(@NonNull MyAdapter.ViewHolder holder, int position) {
        BseandNse mNseBse=dataholder.get(position);
        holder.symbol.setText(""+mNseBse.getSymbolName());

        holder.ltp.setText(""+"₹"+mNseBse.getLtp());
        holder.change.setText(""+"+"+mNseBse.getChange());
        holder.changeper.setText(""+"(+"+mNseBse.getChangePer()+"%)");

    }

    @Override
    public int getItemCount() {
        return dataholder.size();
    }


    public void onLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.onLongClickListener=onLongClickListener;
    }
    private void onClick(View view) {
        onLongClickListener.onLongClick(view);
        return;
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        TextView symbol,ltp,change,changeper;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            symbol=itemView.findViewById(R.id.exchange);
            ltp=itemView.findViewById(R.id.ltp);
            change=itemView.findViewById(R.id.change);
            changeper=itemView.findViewById(R.id.chaper);


        }
    }
}
