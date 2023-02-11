{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkEventCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkEventCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkEventCreateInfo" #-} VkEventCreateInfo =
       VkEventCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkEventCreateFlags -- ^ Event creation flags
         }

instance Storable VkEventCreateInfo where
  sizeOf    _ = #{size      struct VkEventCreateInfo}
  alignment _ = #{alignment struct VkEventCreateInfo}

  peek ptr = 
    VkEventCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val

instance Offset "sType" VkEventCreateInfo where
  rawOffset = #{offset struct VkEventCreateInfo, sType}

instance Offset "pNext" VkEventCreateInfo where
  rawOffset = #{offset struct VkEventCreateInfo, pNext}

instance Offset "flags" VkEventCreateInfo where
  rawOffset = #{offset struct VkEventCreateInfo, flags}