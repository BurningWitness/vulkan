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
  sizeOf    _ = #{size      VkCommandBufferInheritanceInfo}
  alignment _ = #{alignment VkCommandBufferInheritanceInfo}

  peek ptr = 
    VkCommandBufferInheritanceInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"renderPass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subpass" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"framebuffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"occlusionQueryEnable" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queryFlags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipelineStatistics" ptr)

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
  rawOffset = #{offset VkCommandBufferInheritanceInfo, sType}

instance Offset "pNext" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset VkCommandBufferInheritanceInfo, pNext}

instance Offset "renderPass" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset VkCommandBufferInheritanceInfo, renderPass}

instance Offset "subpass" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset VkCommandBufferInheritanceInfo, subpass}

instance Offset "framebuffer" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset VkCommandBufferInheritanceInfo, framebuffer}

instance Offset "occlusionQueryEnable" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset VkCommandBufferInheritanceInfo, occlusionQueryEnable}

instance Offset "queryFlags" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset VkCommandBufferInheritanceInfo, queryFlags}

instance Offset "pipelineStatistics" VkCommandBufferInheritanceInfo where
  rawOffset = #{offset VkCommandBufferInheritanceInfo, pipelineStatistics}