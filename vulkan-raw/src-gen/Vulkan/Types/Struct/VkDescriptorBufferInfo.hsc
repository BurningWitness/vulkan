{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkDescriptorBufferInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDescriptorBufferInfo" #-} VkDescriptorBufferInfo =
       VkDescriptorBufferInfo
         { buffer :: VkBuffer -- ^ Buffer used for this descriptor slot.
         , offset :: VkDeviceSize -- ^ Base offset from buffer start in bytes to update in the descriptor set.
         , range :: VkDeviceSize -- ^ Size in bytes of the buffer resource for this descriptor update.
         }

instance Storable VkDescriptorBufferInfo where
  sizeOf    _ = #{size      VkDescriptorBufferInfo}
  alignment _ = #{alignment VkDescriptorBufferInfo}

  peek ptr = 
    VkDescriptorBufferInfo
       <$> peek (Foreign.Storable.Offset.offset @"buffer" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"offset" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"range" ptr)

  poke ptr val = do
    pokeField @"buffer" ptr val
    pokeField @"offset" ptr val
    pokeField @"range" ptr val

instance Offset "buffer" VkDescriptorBufferInfo where
  rawOffset = #{offset VkDescriptorBufferInfo, buffer}

instance Offset "offset" VkDescriptorBufferInfo where
  rawOffset = #{offset VkDescriptorBufferInfo, offset}

instance Offset "range" VkDescriptorBufferInfo where
  rawOffset = #{offset VkDescriptorBufferInfo, range}