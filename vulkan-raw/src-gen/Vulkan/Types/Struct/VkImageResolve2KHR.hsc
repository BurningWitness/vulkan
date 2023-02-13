{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkImageResolve2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageResolve2KHR" #-} VkImageResolve2KHR =
       VkImageResolve2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSubresource :: VkImageSubresourceLayers
         , srcOffset :: VkOffset3D
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffset :: VkOffset3D
         , extent :: VkExtent3D
         }

instance Storable VkImageResolve2KHR where
  sizeOf    _ = #{size      VkImageResolve2KHR}
  alignment _ = #{alignment VkImageResolve2KHR}

  peek ptr = 
    VkImageResolve2KHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcSubresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstSubresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"extent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffset" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffset" ptr val
    pokeField @"extent" ptr val

instance Offset "sType" VkImageResolve2KHR where
  rawOffset = #{offset VkImageResolve2KHR, sType}

instance Offset "pNext" VkImageResolve2KHR where
  rawOffset = #{offset VkImageResolve2KHR, pNext}

instance Offset "srcSubresource" VkImageResolve2KHR where
  rawOffset = #{offset VkImageResolve2KHR, srcSubresource}

instance Offset "srcOffset" VkImageResolve2KHR where
  rawOffset = #{offset VkImageResolve2KHR, srcOffset}

instance Offset "dstSubresource" VkImageResolve2KHR where
  rawOffset = #{offset VkImageResolve2KHR, dstSubresource}

instance Offset "dstOffset" VkImageResolve2KHR where
  rawOffset = #{offset VkImageResolve2KHR, dstOffset}

instance Offset "extent" VkImageResolve2KHR where
  rawOffset = #{offset VkImageResolve2KHR, extent}

#else

module Vulkan.Types.Struct.VkImageResolve2KHR where

#endif