{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkGraphicsPipelineCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPipelineColorBlendStateCreateInfo
import Vulkan.Types.Struct.VkPipelineDepthStencilStateCreateInfo
import Vulkan.Types.Struct.VkPipelineDynamicStateCreateInfo
import Vulkan.Types.Struct.VkPipelineInputAssemblyStateCreateInfo
import Vulkan.Types.Struct.VkPipelineMultisampleStateCreateInfo
import Vulkan.Types.Struct.VkPipelineRasterizationStateCreateInfo
import Vulkan.Types.Struct.VkPipelineShaderStageCreateInfo
import Vulkan.Types.Struct.VkPipelineTessellationStateCreateInfo
import Vulkan.Types.Struct.VkPipelineVertexInputStateCreateInfo
import Vulkan.Types.Struct.VkPipelineViewportStateCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkGraphicsPipelineCreateInfo" #-} VkGraphicsPipelineCreateInfo =
       VkGraphicsPipelineCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCreateFlags -- ^ Pipeline creation flags
         , stageCount :: #{type uint32_t}
         , pStages :: Ptr VkPipelineShaderStageCreateInfo -- ^ One entry for each active shader stage
         , pVertexInputState :: Ptr VkPipelineVertexInputStateCreateInfo
         , pInputAssemblyState :: Ptr VkPipelineInputAssemblyStateCreateInfo
         , pTessellationState :: Ptr VkPipelineTessellationStateCreateInfo
         , pViewportState :: Ptr VkPipelineViewportStateCreateInfo
         , pRasterizationState :: Ptr VkPipelineRasterizationStateCreateInfo
         , pMultisampleState :: Ptr VkPipelineMultisampleStateCreateInfo
         , pDepthStencilState :: Ptr VkPipelineDepthStencilStateCreateInfo
         , pColorBlendState :: Ptr VkPipelineColorBlendStateCreateInfo
         , pDynamicState :: Ptr VkPipelineDynamicStateCreateInfo
         , layout :: VkPipelineLayout -- ^ Interface layout of the pipeline
         , renderPass :: VkRenderPass
         , subpass :: #{type uint32_t}
         , basePipelineHandle :: VkPipeline -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of
         , basePipelineIndex :: #{type int32_t} -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of
         }

instance Storable VkGraphicsPipelineCreateInfo where
  sizeOf    _ = #{size      VkGraphicsPipelineCreateInfo}
  alignment _ = #{alignment VkGraphicsPipelineCreateInfo}

  peek ptr = 
    VkGraphicsPipelineCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stageCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pVertexInputState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pInputAssemblyState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pTessellationState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pViewportState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pRasterizationState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pMultisampleState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDepthStencilState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pColorBlendState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDynamicState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"renderPass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subpass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"basePipelineHandle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"basePipelineIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"stageCount" ptr val
    pokeField @"pStages" ptr val
    pokeField @"pVertexInputState" ptr val
    pokeField @"pInputAssemblyState" ptr val
    pokeField @"pTessellationState" ptr val
    pokeField @"pViewportState" ptr val
    pokeField @"pRasterizationState" ptr val
    pokeField @"pMultisampleState" ptr val
    pokeField @"pDepthStencilState" ptr val
    pokeField @"pColorBlendState" ptr val
    pokeField @"pDynamicState" ptr val
    pokeField @"layout" ptr val
    pokeField @"renderPass" ptr val
    pokeField @"subpass" ptr val
    pokeField @"basePipelineHandle" ptr val
    pokeField @"basePipelineIndex" ptr val

instance Offset "sType" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, sType}

instance Offset "pNext" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pNext}

instance Offset "flags" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, flags}

instance Offset "stageCount" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, stageCount}

instance Offset "pStages" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pStages}

instance Offset "pVertexInputState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pVertexInputState}

instance Offset "pInputAssemblyState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pInputAssemblyState}

instance Offset "pTessellationState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pTessellationState}

instance Offset "pViewportState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pViewportState}

instance Offset "pRasterizationState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pRasterizationState}

instance Offset "pMultisampleState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pMultisampleState}

instance Offset "pDepthStencilState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pDepthStencilState}

instance Offset "pColorBlendState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pColorBlendState}

instance Offset "pDynamicState" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, pDynamicState}

instance Offset "layout" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, layout}

instance Offset "renderPass" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, renderPass}

instance Offset "subpass" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, subpass}

instance Offset "basePipelineHandle" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, basePipelineHandle}

instance Offset "basePipelineIndex" VkGraphicsPipelineCreateInfo where
  rawOffset = #{offset VkGraphicsPipelineCreateInfo, basePipelineIndex}