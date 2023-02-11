{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkCommandPoolCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCommandPoolCreateFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkCommandPoolCreateInfo" #-} VkCommandPoolCreateInfo =
       VkCommandPoolCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkCommandPoolCreateFlags -- ^ Command pool creation flags
         , queueFamilyIndex :: #{type uint32_t}
         }

instance Storable VkCommandPoolCreateInfo where
  sizeOf    _ = #{size      struct VkCommandPoolCreateInfo}
  alignment _ = #{alignment struct VkCommandPoolCreateInfo}

  peek ptr = 
    VkCommandPoolCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"queueFamilyIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"queueFamilyIndex" ptr val

instance Offset "sType" VkCommandPoolCreateInfo where
  rawOffset = #{offset struct VkCommandPoolCreateInfo, sType}

instance Offset "pNext" VkCommandPoolCreateInfo where
  rawOffset = #{offset struct VkCommandPoolCreateInfo, pNext}

instance Offset "flags" VkCommandPoolCreateInfo where
  rawOffset = #{offset struct VkCommandPoolCreateInfo, flags}

instance Offset "queueFamilyIndex" VkCommandPoolCreateInfo where
  rawOffset = #{offset struct VkCommandPoolCreateInfo, queueFamilyIndex}