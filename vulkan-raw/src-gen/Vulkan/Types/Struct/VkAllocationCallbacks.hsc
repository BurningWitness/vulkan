{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkAllocationCallbacks where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.FuncPointer



data {-# CTYPE "vulkan/vulkan.h" "VkAllocationCallbacks" #-} VkAllocationCallbacks =
       VkAllocationCallbacks
         { pUserData :: Ptr ()
         , pfnAllocation :: FunPtr PFN_vkAllocationFunction
         , pfnReallocation :: FunPtr PFN_vkReallocationFunction
         , pfnFree :: FunPtr PFN_vkFreeFunction
         , pfnInternalAllocation :: FunPtr PFN_vkInternalAllocationNotification
         , pfnInternalFree :: FunPtr PFN_vkInternalFreeNotification
         }

instance Storable VkAllocationCallbacks where
  sizeOf    _ = #{size      struct VkAllocationCallbacks}
  alignment _ = #{alignment struct VkAllocationCallbacks}

  peek ptr = 
    VkAllocationCallbacks
       <$> peek (offset @"pUserData" ptr)
       <*> peek (offset @"pfnAllocation" ptr)
       <*> peek (offset @"pfnReallocation" ptr)
       <*> peek (offset @"pfnFree" ptr)
       <*> peek (offset @"pfnInternalAllocation" ptr)
       <*> peek (offset @"pfnInternalFree" ptr)

  poke ptr val = do
    pokeField @"pUserData" ptr val
    pokeField @"pfnAllocation" ptr val
    pokeField @"pfnReallocation" ptr val
    pokeField @"pfnFree" ptr val
    pokeField @"pfnInternalAllocation" ptr val
    pokeField @"pfnInternalFree" ptr val

instance Offset "pUserData" VkAllocationCallbacks where
  rawOffset = #{offset struct VkAllocationCallbacks, pUserData}

instance Offset "pfnAllocation" VkAllocationCallbacks where
  rawOffset = #{offset struct VkAllocationCallbacks, pfnAllocation}

instance Offset "pfnReallocation" VkAllocationCallbacks where
  rawOffset = #{offset struct VkAllocationCallbacks, pfnReallocation}

instance Offset "pfnFree" VkAllocationCallbacks where
  rawOffset = #{offset struct VkAllocationCallbacks, pfnFree}

instance Offset "pfnInternalAllocation" VkAllocationCallbacks where
  rawOffset = #{offset struct VkAllocationCallbacks, pfnInternalAllocation}

instance Offset "pfnInternalFree" VkAllocationCallbacks where
  rawOffset = #{offset struct VkAllocationCallbacks, pfnInternalFree}