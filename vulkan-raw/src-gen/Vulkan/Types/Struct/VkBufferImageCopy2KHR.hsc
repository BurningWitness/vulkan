{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkBufferImageCopy2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkBufferImageCopy2KHR" #-} VkBufferImageCopy2KHR =
       VkBufferImageCopy2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , bufferOffset :: VkDeviceSize -- ^ Specified in bytes
         , bufferRowLength :: #{type uint32_t} -- ^ Specified in texels
         , bufferImageHeight :: #{type uint32_t}
         , imageSubresource :: VkImageSubresourceLayers
         , imageOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , imageExtent :: VkExtent3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkBufferImageCopy2KHR where
  sizeOf    _ = #{size      VkBufferImageCopy2KHR}
  alignment _ = #{alignment VkBufferImageCopy2KHR}

  peek ptr = 
    VkBufferImageCopy2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"bufferOffset" ptr)
       <*> peek (offset @"bufferRowLength" ptr)
       <*> peek (offset @"bufferImageHeight" ptr)
       <*> peek (offset @"imageSubresource" ptr)
       <*> peek (offset @"imageOffset" ptr)
       <*> peek (offset @"imageExtent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"bufferOffset" ptr val
    pokeField @"bufferRowLength" ptr val
    pokeField @"bufferImageHeight" ptr val
    pokeField @"imageSubresource" ptr val
    pokeField @"imageOffset" ptr val
    pokeField @"imageExtent" ptr val

instance Offset "sType" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, sType}

instance Offset "pNext" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, pNext}

instance Offset "bufferOffset" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, bufferOffset}

instance Offset "bufferRowLength" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, bufferRowLength}

instance Offset "bufferImageHeight" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, bufferImageHeight}

instance Offset "imageSubresource" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, imageSubresource}

instance Offset "imageOffset" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, imageOffset}

instance Offset "imageExtent" VkBufferImageCopy2KHR where
  rawOffset = #{offset VkBufferImageCopy2KHR, imageExtent}

#else

module Vulkan.Types.Struct.VkBufferImageCopy2KHR where

#endif