{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Struct.VkSwapchainCounterCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceCounterFlagsEXT



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainCounterCreateInfoEXT" #-} VkSwapchainCounterCreateInfoEXT =
       VkSwapchainCounterCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , surfaceCounters :: VkSurfaceCounterFlagsEXT
         }

instance Storable VkSwapchainCounterCreateInfoEXT where
  sizeOf    _ = #{size      struct VkSwapchainCounterCreateInfoEXT}
  alignment _ = #{alignment struct VkSwapchainCounterCreateInfoEXT}

  peek ptr = 
    VkSwapchainCounterCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"surfaceCounters" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"surfaceCounters" ptr val

instance Offset "sType" VkSwapchainCounterCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainCounterCreateInfoEXT, sType}

instance Offset "pNext" VkSwapchainCounterCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainCounterCreateInfoEXT, pNext}

instance Offset "surfaceCounters" VkSwapchainCounterCreateInfoEXT where
  rawOffset = #{offset struct VkSwapchainCounterCreateInfoEXT, surfaceCounters}

#else

module Vulkan.Types.Struct.VkSwapchainCounterCreateInfoEXT where

#endif