{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkBufferImageCopy where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkBufferImageCopy" #-} VkBufferImageCopy =
       VkBufferImageCopy
         { bufferOffset :: VkDeviceSize -- ^ Specified in bytes
         , bufferRowLength :: #{type uint32_t} -- ^ Specified in texels
         , bufferImageHeight :: #{type uint32_t}
         , imageSubresource :: VkImageSubresourceLayers
         , imageOffset :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , imageExtent :: VkExtent3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkBufferImageCopy where
  sizeOf    _ = #{size      struct VkBufferImageCopy}
  alignment _ = #{alignment struct VkBufferImageCopy}

  peek ptr = 
    VkBufferImageCopy
       <$> peek (offset @"bufferOffset" ptr)
       <*> peek (offset @"bufferRowLength" ptr)
       <*> peek (offset @"bufferImageHeight" ptr)
       <*> peek (offset @"imageSubresource" ptr)
       <*> peek (offset @"imageOffset" ptr)
       <*> peek (offset @"imageExtent" ptr)

  poke ptr val = do
    pokeField @"bufferOffset" ptr val
    pokeField @"bufferRowLength" ptr val
    pokeField @"bufferImageHeight" ptr val
    pokeField @"imageSubresource" ptr val
    pokeField @"imageOffset" ptr val
    pokeField @"imageExtent" ptr val

instance Offset "bufferOffset" VkBufferImageCopy where
  rawOffset = #{offset struct VkBufferImageCopy, bufferOffset}

instance Offset "bufferRowLength" VkBufferImageCopy where
  rawOffset = #{offset struct VkBufferImageCopy, bufferRowLength}

instance Offset "bufferImageHeight" VkBufferImageCopy where
  rawOffset = #{offset struct VkBufferImageCopy, bufferImageHeight}

instance Offset "imageSubresource" VkBufferImageCopy where
  rawOffset = #{offset struct VkBufferImageCopy, imageSubresource}

instance Offset "imageOffset" VkBufferImageCopy where
  rawOffset = #{offset struct VkBufferImageCopy, imageOffset}

instance Offset "imageExtent" VkBufferImageCopy where
  rawOffset = #{offset struct VkBufferImageCopy, imageExtent}