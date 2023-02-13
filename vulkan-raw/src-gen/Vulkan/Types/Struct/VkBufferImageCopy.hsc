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
  sizeOf    _ = #{size      VkBufferImageCopy}
  alignment _ = #{alignment VkBufferImageCopy}

  peek ptr = 
    VkBufferImageCopy
       <$> peek (Foreign.Storable.Offset.offset @"bufferOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferRowLength" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"bufferImageHeight" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageSubresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageOffset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"imageExtent" ptr)

  poke ptr val = do
    pokeField @"bufferOffset" ptr val
    pokeField @"bufferRowLength" ptr val
    pokeField @"bufferImageHeight" ptr val
    pokeField @"imageSubresource" ptr val
    pokeField @"imageOffset" ptr val
    pokeField @"imageExtent" ptr val

instance Offset "bufferOffset" VkBufferImageCopy where
  rawOffset = #{offset VkBufferImageCopy, bufferOffset}

instance Offset "bufferRowLength" VkBufferImageCopy where
  rawOffset = #{offset VkBufferImageCopy, bufferRowLength}

instance Offset "bufferImageHeight" VkBufferImageCopy where
  rawOffset = #{offset VkBufferImageCopy, bufferImageHeight}

instance Offset "imageSubresource" VkBufferImageCopy where
  rawOffset = #{offset VkBufferImageCopy, imageSubresource}

instance Offset "imageOffset" VkBufferImageCopy where
  rawOffset = #{offset VkBufferImageCopy, imageOffset}

instance Offset "imageExtent" VkBufferImageCopy where
  rawOffset = #{offset VkBufferImageCopy, imageExtent}