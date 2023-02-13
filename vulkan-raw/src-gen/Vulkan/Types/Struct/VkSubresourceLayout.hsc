{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSubresourceLayout where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base



data {-# CTYPE "vulkan/vulkan.h" "VkSubresourceLayout" #-} VkSubresourceLayout =
       VkSubresourceLayout
         { offset :: VkDeviceSize -- ^ Specified in bytes
         , size :: VkDeviceSize -- ^ Specified in bytes
         , rowPitch :: VkDeviceSize -- ^ Specified in bytes
         , arrayPitch :: VkDeviceSize -- ^ Specified in bytes
         , depthPitch :: VkDeviceSize -- ^ Specified in bytes
         }

instance Storable VkSubresourceLayout where
  sizeOf    _ = #{size      VkSubresourceLayout}
  alignment _ = #{alignment VkSubresourceLayout}

  peek ptr = 
    VkSubresourceLayout
       <$> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"size" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"rowPitch" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"arrayPitch" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"depthPitch" ptr)

  poke ptr val = do
    pokeField @"offset" ptr val
    pokeField @"size" ptr val
    pokeField @"rowPitch" ptr val
    pokeField @"arrayPitch" ptr val
    pokeField @"depthPitch" ptr val

instance Offset "offset" VkSubresourceLayout where
  rawOffset = #{offset VkSubresourceLayout, offset}

instance Offset "size" VkSubresourceLayout where
  rawOffset = #{offset VkSubresourceLayout, size}

instance Offset "rowPitch" VkSubresourceLayout where
  rawOffset = #{offset VkSubresourceLayout, rowPitch}

instance Offset "arrayPitch" VkSubresourceLayout where
  rawOffset = #{offset VkSubresourceLayout, arrayPitch}

instance Offset "depthPitch" VkSubresourceLayout where
  rawOffset = #{offset VkSubresourceLayout, depthPitch}