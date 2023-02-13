{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_present_barrier

module Vulkan.Types.Struct.VkSwapchainPresentBarrierCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSwapchainPresentBarrierCreateInfoNV" #-} VkSwapchainPresentBarrierCreateInfoNV =
       VkSwapchainPresentBarrierCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , presentBarrierEnable :: VkBool32
         }

instance Storable VkSwapchainPresentBarrierCreateInfoNV where
  sizeOf    _ = #{size      VkSwapchainPresentBarrierCreateInfoNV}
  alignment _ = #{alignment VkSwapchainPresentBarrierCreateInfoNV}

  peek ptr = 
    VkSwapchainPresentBarrierCreateInfoNV
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"presentBarrierEnable" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"presentBarrierEnable" ptr val

instance Offset "sType" VkSwapchainPresentBarrierCreateInfoNV where
  rawOffset = #{offset VkSwapchainPresentBarrierCreateInfoNV, sType}

instance Offset "pNext" VkSwapchainPresentBarrierCreateInfoNV where
  rawOffset = #{offset VkSwapchainPresentBarrierCreateInfoNV, pNext}

instance Offset "presentBarrierEnable" VkSwapchainPresentBarrierCreateInfoNV where
  rawOffset = #{offset VkSwapchainPresentBarrierCreateInfoNV, presentBarrierEnable}

#else

module Vulkan.Types.Struct.VkSwapchainPresentBarrierCreateInfoNV where

#endif