{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkImageCopy2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageCopy2KHR" #-} VkImageCopy2KHR =
       VkImageCopy2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSubresource :: VkImageSubresourceLayers
         , srcOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , extent :: VkExtent3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkImageCopy2KHR where
  sizeOf    _ = #{size      VkImageCopy2KHR}
  alignment _ = #{alignment VkImageCopy2KHR}

  peek ptr = 
    VkImageCopy2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcSubresource" ptr)
       <*> peek (offset @"srcOffset" ptr)
       <*> peek (offset @"dstSubresource" ptr)
       <*> peek (offset @"dstOffset" ptr)
       <*> peek (offset @"extent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffset" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffset" ptr val
    pokeField @"extent" ptr val

instance Offset "sType" VkImageCopy2KHR where
  rawOffset = #{offset VkImageCopy2KHR, sType}

instance Offset "pNext" VkImageCopy2KHR where
  rawOffset = #{offset VkImageCopy2KHR, pNext}

instance Offset "srcSubresource" VkImageCopy2KHR where
  rawOffset = #{offset VkImageCopy2KHR, srcSubresource}

instance Offset "srcOffset" VkImageCopy2KHR where
  rawOffset = #{offset VkImageCopy2KHR, srcOffset}

instance Offset "dstSubresource" VkImageCopy2KHR where
  rawOffset = #{offset VkImageCopy2KHR, dstSubresource}

instance Offset "dstOffset" VkImageCopy2KHR where
  rawOffset = #{offset VkImageCopy2KHR, dstOffset}

instance Offset "extent" VkImageCopy2KHR where
  rawOffset = #{offset VkImageCopy2KHR, extent}

#else

module Vulkan.Types.Struct.VkImageCopy2KHR where

#endif