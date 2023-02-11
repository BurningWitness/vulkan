{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkSparseImageMemoryBindInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSparseImageMemoryBind



data {-# CTYPE "vulkan/vulkan.h" "VkSparseImageMemoryBindInfo" #-} VkSparseImageMemoryBindInfo =
       VkSparseImageMemoryBindInfo
         { image :: VkImage
         , bindCount :: #{type uint32_t}
         , pBinds :: Ptr VkSparseImageMemoryBind
         }

instance Storable VkSparseImageMemoryBindInfo where
  sizeOf    _ = #{size      struct VkSparseImageMemoryBindInfo}
  alignment _ = #{alignment struct VkSparseImageMemoryBindInfo}

  peek ptr = 
    VkSparseImageMemoryBindInfo
       <$> peek (offset @"image" ptr)
       <*> peek (offset @"bindCount" ptr)
       <*> peek (offset @"pBinds" ptr)

  poke ptr val = do
    pokeField @"image" ptr val
    pokeField @"bindCount" ptr val
    pokeField @"pBinds" ptr val

instance Offset "image" VkSparseImageMemoryBindInfo where
  rawOffset = #{offset struct VkSparseImageMemoryBindInfo, image}

instance Offset "bindCount" VkSparseImageMemoryBindInfo where
  rawOffset = #{offset struct VkSparseImageMemoryBindInfo, bindCount}

instance Offset "pBinds" VkSparseImageMemoryBindInfo where
  rawOffset = #{offset struct VkSparseImageMemoryBindInfo, pBinds}