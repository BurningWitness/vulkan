{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NVX_binary_import

module Vulkan.Types.Struct.VkCuLaunchInfoNVX where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCuLaunchInfoNVX" #-} VkCuLaunchInfoNVX =
       VkCuLaunchInfoNVX
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , function :: VkCuFunctionNVX
         , gridDimX :: #{type uint32_t}
         , gridDimY :: #{type uint32_t}
         , gridDimZ :: #{type uint32_t}
         , blockDimX :: #{type uint32_t}
         , blockDimY :: #{type uint32_t}
         , blockDimZ :: #{type uint32_t}
         , sharedMemBytes :: #{type uint32_t}
         , paramCount :: #{type size_t}
         , pParams :: Ptr (Ptr ())
         , extraCount :: #{type size_t}
         , pExtras :: Ptr (Ptr ())
         }

instance Storable VkCuLaunchInfoNVX where
  sizeOf    _ = #{size      struct VkCuLaunchInfoNVX}
  alignment _ = #{alignment struct VkCuLaunchInfoNVX}

  peek ptr = 
    VkCuLaunchInfoNVX
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"function" ptr)
       <*> peek (offset @"gridDimX" ptr)
       <*> peek (offset @"gridDimY" ptr)
       <*> peek (offset @"gridDimZ" ptr)
       <*> peek (offset @"blockDimX" ptr)
       <*> peek (offset @"blockDimY" ptr)
       <*> peek (offset @"blockDimZ" ptr)
       <*> peek (offset @"sharedMemBytes" ptr)
       <*> peek (offset @"paramCount" ptr)
       <*> peek (offset @"pParams" ptr)
       <*> peek (offset @"extraCount" ptr)
       <*> peek (offset @"pExtras" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"function" ptr val
    pokeField @"gridDimX" ptr val
    pokeField @"gridDimY" ptr val
    pokeField @"gridDimZ" ptr val
    pokeField @"blockDimX" ptr val
    pokeField @"blockDimY" ptr val
    pokeField @"blockDimZ" ptr val
    pokeField @"sharedMemBytes" ptr val
    pokeField @"paramCount" ptr val
    pokeField @"pParams" ptr val
    pokeField @"extraCount" ptr val
    pokeField @"pExtras" ptr val

instance Offset "sType" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, sType}

instance Offset "pNext" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, pNext}

instance Offset "function" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, function}

instance Offset "gridDimX" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, gridDimX}

instance Offset "gridDimY" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, gridDimY}

instance Offset "gridDimZ" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, gridDimZ}

instance Offset "blockDimX" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, blockDimX}

instance Offset "blockDimY" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, blockDimY}

instance Offset "blockDimZ" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, blockDimZ}

instance Offset "sharedMemBytes" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, sharedMemBytes}

instance Offset "paramCount" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, paramCount}

instance Offset "pParams" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, pParams}

instance Offset "extraCount" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, extraCount}

instance Offset "pExtras" VkCuLaunchInfoNVX where
  rawOffset = #{offset struct VkCuLaunchInfoNVX, pExtras}

#else

module Vulkan.Types.Struct.VkCuLaunchInfoNVX where

#endif