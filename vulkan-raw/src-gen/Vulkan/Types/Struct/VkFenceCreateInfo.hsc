{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkFenceCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFenceCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkFenceCreateInfo" #-} VkFenceCreateInfo =
       VkFenceCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkFenceCreateFlags -- ^ Fence creation flags
         }

instance Storable VkFenceCreateInfo where
  sizeOf    _ = #{size      VkFenceCreateInfo}
  alignment _ = #{alignment VkFenceCreateInfo}

  peek ptr = 
    VkFenceCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkFenceCreateInfo where
  rawOffset = #{offset VkFenceCreateInfo, sType}

instance Offset "pNext" VkFenceCreateInfo where
  rawOffset = #{offset VkFenceCreateInfo, pNext}

instance Offset "flags" VkFenceCreateInfo where
  rawOffset = #{offset VkFenceCreateInfo, flags}