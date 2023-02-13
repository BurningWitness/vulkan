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
  sizeOf    _ = #{size      VkAllocationCallbacks}
  alignment _ = #{alignment VkAllocationCallbacks}

  peek ptr = 
    VkAllocationCallbacks
       <$> peek (Foreign.Storable.Offset.offset @"pUserData" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnAllocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnReallocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnFree" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnInternalAllocation" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pfnInternalFree" ptr)

  poke ptr val = do
    pokeField @"pUserData" ptr val
    pokeField @"pfnAllocation" ptr val
    pokeField @"pfnReallocation" ptr val
    pokeField @"pfnFree" ptr val
    pokeField @"pfnInternalAllocation" ptr val
    pokeField @"pfnInternalFree" ptr val

instance Offset "pUserData" VkAllocationCallbacks where
  rawOffset = #{offset VkAllocationCallbacks, pUserData}

instance Offset "pfnAllocation" VkAllocationCallbacks where
  rawOffset = #{offset VkAllocationCallbacks, pfnAllocation}

instance Offset "pfnReallocation" VkAllocationCallbacks where
  rawOffset = #{offset VkAllocationCallbacks, pfnReallocation}

instance Offset "pfnFree" VkAllocationCallbacks where
  rawOffset = #{offset VkAllocationCallbacks, pfnFree}

instance Offset "pfnInternalAllocation" VkAllocationCallbacks where
  rawOffset = #{offset VkAllocationCallbacks, pfnInternalAllocation}

instance Offset "pfnInternalFree" VkAllocationCallbacks where
  rawOffset = #{offset VkAllocationCallbacks, pfnInternalFree}