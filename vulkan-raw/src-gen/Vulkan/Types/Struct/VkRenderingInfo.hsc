{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkRenderingInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkRenderingFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.Struct.VkRenderingAttachmentInfo



data {-# CTYPE "vulkan/vulkan.h" "VkRenderingInfo" #-} VkRenderingInfo =
       VkRenderingInfo
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

instance Storable VkRenderingInfo where
  sizeOf    _ = #{size      VkRenderingInfo}
  alignment _ = #{alignment VkRenderingInfo}

  peek ptr = 
    VkRenderingInfo
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

instance Offset "sType" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, sType}

instance Offset "pNext" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, pNext}

instance Offset "flags" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, flags}

instance Offset "renderArea" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, renderArea}

instance Offset "layerCount" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, layerCount}

instance Offset "viewMask" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, viewMask}

instance Offset "colorAttachmentCount" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, colorAttachmentCount}

instance Offset "pColorAttachments" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, pColorAttachments}

instance Offset "pDepthAttachment" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, pDepthAttachment}

instance Offset "pStencilAttachment" VkRenderingInfo where
  rawOffset = #{offset VkRenderingInfo, pStencilAttachment}

#else

module Vulkan.Types.Struct.VkRenderingInfo where

#endif