{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkCommandBufferBeginInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCommandBufferUsageFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCommandBufferInheritanceInfo



data {-# CTYPE "vulkan/vulkan.h" "VkCommandBufferBeginInfo" #-} VkCommandBufferBeginInfo =
       VkCommandBufferBeginInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkCommandBufferUsageFlags -- ^ Command buffer usage flags
         , pInheritanceInfo :: Ptr VkCommandBufferInheritanceInfo -- ^ Pointer to inheritance info for secondary command buffers
         }

instance Storable VkCommandBufferBeginInfo where
  sizeOf    _ = #{size      VkCommandBufferBeginInfo}
  alignment _ = #{alignment VkCommandBufferBeginInfo}

  peek ptr = 
    VkCommandBufferBeginInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pInheritanceInfo" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"pInheritanceInfo" ptr val

instance Offset "sType" VkCommandBufferBeginInfo where
  rawOffset = #{offset VkCommandBufferBeginInfo, sType}

instance Offset "pNext" VkCommandBufferBeginInfo where
  rawOffset = #{offset VkCommandBufferBeginInfo, pNext}

instance Offset "flags" VkCommandBufferBeginInfo where
  rawOffset = #{offset VkCommandBufferBeginInfo, flags}

instance Offset "pInheritanceInfo" VkCommandBufferBeginInfo where
  rawOffset = #{offset VkCommandBufferBeginInfo, pInheritanceInfo}