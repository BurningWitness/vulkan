{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_dynamic_rendering) || (VK_QCOM_tile_properties)

module Vulkan.Types.Struct.VkRenderingInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkRenderingFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.Struct.VkRenderingAttachmentInfo



data {-# CTYPE "vulkan/vulkan.h" "VkRenderingInfoKHR" #-} VkRenderingInfoKHR =
       VkRenderingInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkRenderingFlags
         , renderArea :: VkRect2D
         , layerCount :: #{type uint32_t}
         , viewMask :: #{type uint32_t}
         , colorAttachmentCount :: #{type uint32_t}
         , pColorAttachments :: Ptr VkRenderingAttachmentInfo
         , pDepthAttachment :: Ptr VkRenderingAttachmentInfo
         , pStencilAttachment :: Ptr VkRenderingAttachmentInfo
         }

instance Storable VkRenderingInfoKHR where
  sizeOf    _ = #{size      VkRenderingInfoKHR}
  alignment _ = #{alignment VkRenderingInfoKHR}

  peek ptr = 
    VkRenderingInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"renderArea" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layerCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"viewMask" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorAttachmentCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pColorAttachments" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDepthAttachment" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStencilAttachment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"renderArea" ptr val
    pokeField @"layerCount" ptr val
    pokeField @"viewMask" ptr val
    pokeField @"colorAttachmentCount" ptr val
    pokeField @"pColorAttachments" ptr val
    pokeField @"pDepthAttachment" ptr val
    pokeField @"pStencilAttachment" ptr val

instance Offset "sType" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, sType}

instance Offset "pNext" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, pNext}

instance Offset "flags" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, flags}

instance Offset "renderArea" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, renderArea}

instance Offset "layerCount" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, layerCount}

instance Offset "viewMask" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, viewMask}

instance Offset "colorAttachmentCount" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, colorAttachmentCount}

instance Offset "pColorAttachments" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, pColorAttachments}

instance Offset "pDepthAttachment" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, pDepthAttachment}

instance Offset "pStencilAttachment" VkRenderingInfoKHR where
  rawOffset = #{offset VkRenderingInfoKHR, pStencilAttachment}

#else

module Vulkan.Types.Struct.VkRenderingInfoKHR where

#endif