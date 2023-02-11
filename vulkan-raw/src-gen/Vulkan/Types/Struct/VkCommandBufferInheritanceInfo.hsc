{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkCommandBufferInheritanceInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkQueryControlFlags
import Vulkan.Types.Enum.VkQueryPipelineStatisticFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferInheritanceInfo" #-} VkCommandBufferInheritanceInfo =
       VkCommandBufferInheritanceInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , renderPass :: VkRenderPass -- ^ Render pass for secondary command buffers
         , subpass :: #{type uint32_t}
         , framebuffer :: VkFramebuffer -- ^ Framebuffer for secondary command buffers
         , occlusionQueryEnable :: VkBool32 -- ^ Whether this secondary command buffer may be executed during an occlusion query
         , queryFlags :: VkQueryControlFlags -- ^ Query flags used by this secondary command buffer, if executed during an occlusion query
         , pipelineStatistics :: VkQueryPipelineStatisticFlags -- ^ Pipeline statistics that may be counted for this secondary command buffer
         }

instance Storable VkCommandBufferInheritanceInfo where
  sizeOf    _ = #{size      struct VkCommandBufferInheritanceInfo}
  alignment _ = #{alignment struct VkCommandBufferInheritanceInfo}

  peek ptr = 
    VkCommandBufferInheritanceInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"renderPass" ptr)
       <*> peek (offset @"subpass" ptr)
       <*> peek (offset @"framebuffer" ptr)
       <*> peek (offset @"occlusionQueryEnable" ptr)
       <*> peek (offset @"queryFlags" ptr)
       <*> peek (offset @"pipelineStatistics" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"renderPass" ptr val
    pokeField @"subpass" ptr val
    pokeField @"framebuffer" ptr val
    pokeField @"occlusionQueryEnable" ptr val
    pokeField @"queryFlags" ptr val
    pokeField @"pipelineStatistics" ptr val

instance Offset "sType" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, sType}

instance Offset "pNext" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, pNext}

instance Offset "renderPass" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, renderPass}

instance Offset "subpass" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, subpass}

instance Offset "framebuffer" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, framebuffer}

instance Offset "occlusionQueryEnable" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, occlusionQueryEnable}

instance Offset "queryFlags" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, queryFlags}

instance Offset "pipelineStatistics" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset struct VkCommandBufferInheritanceInfo, pipelineStatistics}